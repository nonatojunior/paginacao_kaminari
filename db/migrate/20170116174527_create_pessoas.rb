class CreatePessoas < ActiveRecord::Migration[5.0]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.integer :idade

      t.timestamps
    end
  end
end
