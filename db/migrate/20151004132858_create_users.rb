class CreateUsers < ActiveRecord::Migration
  def load_data
    enterprise = Enterprise.where(name: Enterprise::ADM_NAME)[0]
    User.create(:name => User::ADM_NAME, :email=> User::ADM_EMAIL, :password => User::ADM_PASSWD, :enterprise_id => enterprise.id)
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

    self.load_data
  end
end
