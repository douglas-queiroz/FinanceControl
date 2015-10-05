class CreateEnterprises < ActiveRecord::Migration
  def self.up
  	Enterprise.create(:name => "Enterprise Adm")  
  end

  def change
    create_table :enterprises do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
