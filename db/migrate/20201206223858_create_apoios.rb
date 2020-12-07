class CreateApoios < ActiveRecord::Migration[6.0]
  def change
    create_table :apoios do |t|
      t.string :telefone
      t.string :logradouro
      t.string :numero
      t.string :bairro
      t.string :cidade
      t.string :uf
      t.string :nomegrupoapoio

      t.timestamps
    end
  end
end
