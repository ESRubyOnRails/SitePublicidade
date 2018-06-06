class CreateTableUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :nome, null: false
      t.string :email, null: false
    end
  end
end
