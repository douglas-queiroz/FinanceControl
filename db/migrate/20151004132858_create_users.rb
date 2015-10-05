class CreateUsers < ActiveRecord::Migration
  def self.up
    enterprise = Enterprise.find(:name => "Enterprise Adm")
    User.create(:name => "Administrator", :email=>"admin@admin.com", :password => "change_your_pwd", :enterprise_id => enterprise.id)
  end

  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :username
      t.string :password
      t.integer :enterprise_id

      t.timestamps null: false
    end
  end
end
