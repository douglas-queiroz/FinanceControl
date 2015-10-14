class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :cpf
      t.date :birth
      t.string :phone
      t.string :cellphone

      t.timestamps null: false
    end
  end
end
