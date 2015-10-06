class Enterprise < ActiveRecord::Base
	has_many :user
	ADM_NAME = 'Enterprise Admin'
end
