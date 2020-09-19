class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.string :date
      t.string :cep

      t.timestamps
    end
  end
end
