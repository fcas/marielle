class CreateGruposReflexivo < ActiveRecord::Migration[6.0]
  def change
    create_table :registros_grupos_reflexivos do |t|
      t.text :nomegruporeflexivo
      t.text :telefone
      t.text :logradouro
      t.integer :numero
      t.text :bairro
      t.text :cidade
      t.text :uf
    end
  end
end