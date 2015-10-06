class User < ActiveRecord::Base
	belongs_to :enterprise

	ADM_NAME = 'Administrator'
	ADM_EMAIL = 'administrator@admin.com'
	ADM_PASSWD = 'change_your_passwd'
end
