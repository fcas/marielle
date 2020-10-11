class CreateRawRegistrosOcorrenciasSspSpGovBrsTestes < ActiveRecord::Migration[6.0]
  def change
    create_table :raw_registros_ocorrencias_ssp_sp_gov_brs_testes do |t|
      t.string :ano_bo
      t.string :integer
      t.integer :num_bo
      t.text :numero_boletim

      t.timestamps
    end
  end
end
