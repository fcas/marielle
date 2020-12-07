# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_06_223858) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apoios", force: :cascade do |t|
    t.string "telefone"
    t.string "logradouro"
    t.string "numero"
    t.string "bairro"
    t.string "cidade"
    t.string "uf"
    t.string "nomegrupoapoio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "grupo_reflexivos", force: :cascade do |t|
    t.string "telefone"
    t.string "logradouro"
    t.string "numero"
    t.string "bairro"
    t.string "cidade"
    t.string "uf"
    t.string "nomegruporeflexivo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "raw_registros_ocorrencias_ssp_sp_gov_brs", force: :cascade do |t|
    t.integer "ano_bo"
    t.integer "num_bo"
    t.text "numero_boletim"
    t.text "bo_iniciado"
    t.text "bo_emitido"
    t.text "dataocorrencia"
    t.text "horaocorrencia"
    t.text "peridoocorrencia"
    t.text "datacomunicacao"
    t.text "dataelaboracao"
    t.text "bo_autoria"
    t.text "flagrante"
    t.text "numero_boletim_principal"
    t.text "logradouro"
    t.integer "numero"
    t.text "bairro"
    t.text "cidade"
    t.text "uf"
    t.text "latitude"
    t.text "longitude"
    t.text "descricaolocal"
    t.text "exame"
    t.text "solucao"
    t.text "delegacia_nome"
    t.text "delegacia_circunscricao"
    t.text "especie"
    t.text "rubrica"
    t.text "desdobramento"
    t.text "status"
    t.text "nomepessoa"
    t.text "tipopessoa"
    t.text "vitimafatal"
    t.text "rg"
    t.text "rg_uf"
    t.text "naturalidade"
    t.text "nacionalidade"
    t.text "sexo"
    t.text "datanascimento"
    t.text "idade"
    t.text "estadocivil"
    t.text "profissao"
    t.text "grauinstrucao"
    t.text "corcutis"
    t.text "naturezavinculada"
    t.text "tipovinculo"
    t.text "relacionamento"
    t.text "parentesco"
    t.text "placa_veiculo"
    t.text "uf_veiculo"
    t.text "cidade_veiculo"
    t.text "descr_cor_veiculo"
    t.text "descr_marca_veiculo"
    t.integer "ano_fabricacao"
    t.integer "ano_modelo"
    t.text "descr_tipo_veiculo"
    t.text "quant_celular"
    t.text "marca_celular"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "registros_grupos_reflexivos", force: :cascade do |t|
    t.text "nomegruporeflexivo"
    t.text "telefone"
    t.text "logradouro"
    t.integer "numero"
    t.text "bairro"
    t.text "cidade"
    t.text "uf"
  end

end
