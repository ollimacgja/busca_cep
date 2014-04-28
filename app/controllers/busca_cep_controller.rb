class BuscaCepController < ApplicationController

	def index
	end

	def find
		if params[:cep].present?
			cep = params[:cep]
			cep.gsub!(/\D/, '')
			if LogLocalidade.where(:CEP => cep).present?
				end_ret = LogLocalidade.where(:CEP => cep)
				endereco = Hash.new
				endereco = {"UF" => end_ret[0].UFE_SG}
				endereco.merge!({"Cidade" => end_ret[0].LOC_NO})
			elsif LogLogradouro.where(:CEP => cep).present?
				end_ret = LogLogradouro.where(:CEP => cep)
				endereco = Hash.new
				endereco = {"UF" => end_ret[0].UFE_SG}
				endereco.merge!({"Cidade" => LogLocalidade.where(:LOC_NU => end_ret[0].LOC_NU)[0].LOC_NO})
				logradouro = end_ret[0].TLO_TX + " " + end_ret[0].LOG_NO
				endereco.merge!({"Logradouro" => logradouro})
				endereco.merge!({"Complemento" => end_ret[0].LOG_COMPLEMENTO})
				endereco.merge!({"Bairro" => LogBairro.where(:BAI_NU => end_ret[0].BAI_NU_INI)[0].BAI_NO})
			elsif LogGrandeUsuario.where(:CEP => cep).present?
				end_ret = LogGrandeUsuario.where(:CEP => cep)
				endereco = Hash.new
				endereco = {"UF" => end_ret[0].UFE_SG}
				endereco.merge!({"Cidade" => LogLocalidade.where(:LOC_NU => end_ret[0].LOC_NU)[0].LOC_NO})
				endereco.merge!({"Endereco" => end_ret[0].GRU_ENDERECO})
				endereco.merge!({"Complemento" => end_ret[0].GRU_NO})
				endereco.merge!({"Bairro" => LogBairro.where(:BAI_NU => end_ret[0].BAI_NU)[0].BAI_NO})
			elsif LogUnidOper.where(:CEP => cep).present?
				end_ret = LogUnidOper.where(:CEP => cep)
				endereco = Hash.new
				endereco = {"UF" => end_ret[0].UFE_SG}
				endereco.merge!({"Cidade" => LogLocalidade.where(:LOC_NU => end_ret[0].LOC_NU)[0].LOC_NO})
				endereco.merge!({"Endereco" => end_ret[0].UOP_ENDERECO})
				endereco.merge!({"Complemento" => end_ret[0].UOP_NO})
				endereco.merge!({"Bairro" => LogBairro.where(:BAI_NU => end_ret[0].BAI_NU)[0].BAI_NO})
			elsif LogCpc.where(:CEP => cep).present?
				end_ret = LogCpc.where(:CEP => cep)
				endereco = Hash.new
				endereco.merge!({"UF" => end_ret[0].UFE_SG})
				endereco.merge!("Cidade" => LogLocalidade.where(:LOC_NU => end_ret[0].LOC_NU)[0].LOC_NO)
				endereco.merge!("Endereco" => end_ret[0].CPC_ENDERECO)
				endereco.merge!("Complemento" => end_ret[0].CPC_NO)
			else
				{"Erro" => "CEP inexistente"}
			end
		end
		render json: endereco
	end
end
