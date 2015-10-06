class CreateEnterprises < ActiveRecord::Migration
  def load_data
  	Enterprise.create(:name => Enterprise::ADM_NAME)  
  end

  def change
    create_table :enterprises do |t|
      t.string :name

      t.timestamps null: false
    end

    self.load_data
  end
end
