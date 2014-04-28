# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140304150303) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "log_bairros", force: true do |t|
    t.string   "BAI_NU"
    t.string   "UFE_SG"
    t.string   "LOC_NU"
    t.string   "BAI_NO"
    t.string   "BAI_NO_ABREV"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_cpcs", force: true do |t|
    t.string   "CPC_NU"
    t.string   "UFE_SG"
    t.string   "LOC_NU"
    t.string   "CPC_NO"
    t.string   "CPC_ENDERECO"
    t.string   "CEP"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_faixa_bairros", force: true do |t|
    t.string   "BAI_NU"
    t.string   "FCB_CEP_INI"
    t.string   "FCB_CEP_FIM"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_faixa_cpcs", force: true do |t|
    t.string   "CPC_NU"
    t.string   "CPC_INICIAL"
    t.string   "CPC_FINAL"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_faixa_localidades", force: true do |t|
    t.string   "LOC_NU"
    t.string   "LOC_CEP_INI"
    t.string   "LOC_CEP_FIM"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_faixa_uops", force: true do |t|
    t.string   "UOP_NU"
    t.string   "FNC_INICIAL"
    t.string   "FNC_FINAL"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_faixas", force: true do |t|
    t.string   "UFE_SG"
    t.string   "UFE_CEP_INI"
    t.string   "UFE_CEP_FIM"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_grande_usuarios", force: true do |t|
    t.string   "GRU_NU"
    t.string   "UFE_SG"
    t.string   "LOC_NU"
    t.string   "BAI_NU"
    t.string   "LOG_NU"
    t.string   "GRU_NO"
    t.string   "GRU_ENDERECO"
    t.string   "CEP"
    t.string   "GRU_NO_ABREV"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_localidades", force: true do |t|
    t.string   "LOC_NU"
    t.string   "UFE_SG"
    t.string   "LOC_NO"
    t.string   "CEP"
    t.string   "LOC_IN_SIT"
    t.string   "LOC_IN_TIPO_LOC"
    t.string   "LOC_NU_SUB"
    t.string   "LOC_NO_ABREV"
    t.string   "MUN_NU"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_logradouros", force: true do |t|
    t.string   "LOG_NU"
    t.string   "UFE_SG"
    t.string   "LOC_NU"
    t.string   "BAI_NU_INI"
    t.string   "BAI_NU_FIM"
    t.string   "LOG_NO"
    t.string   "LOG_COMPLEMENTO"
    t.string   "CEP"
    t.string   "TLO_TX"
    t.string   "LOG_STA_TLO"
    t.string   "LOG_NO_ABREV"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_num_secs", force: true do |t|
    t.string   "LOG_NU"
    t.string   "SEC_NU_INI"
    t.string   "SEC_NU_FIM"
    t.string   "SEC_IN_LADO"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_unid_opers", force: true do |t|
    t.string   "UOP_NU"
    t.string   "UFE_SG"
    t.string   "LOC_NU"
    t.string   "BAI_NU"
    t.string   "LOG_NU"
    t.string   "UOP_NO"
    t.string   "UOP_ENDERECO"
    t.string   "CEP"
    t.string   "UOP_IN_CP"
    t.string   "UOP_NO_ABREV"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_var_bais", force: true do |t|
    t.string   "BAI_NU"
    t.string   "VDB_NU"
    t.string   "VDB_TX"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_var_locs", force: true do |t|
    t.string   "LOC_NU"
    t.string   "VAL_NU"
    t.string   "VAL_TX"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "log_var_logs", force: true do |t|
    t.string   "LOG_NU"
    t.string   "VLO_NU"
    t.string   "TLO_TX"
    t.string   "VLO_TX"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
