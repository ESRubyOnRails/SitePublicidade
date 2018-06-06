class CreateRegisters < ActiveRecord::Migration[5.1]
  def change
    create_table :registers do |t|
      t.string :nome
      t.string :email

      t.timestamps
    end
  end
end
