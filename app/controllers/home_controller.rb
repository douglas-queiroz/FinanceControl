class HomeController < ApplicationController
	def index

	end

	def login
		render layout: false
	end

	def sign_in
		login = params[:user][:login]
		password = params[:user][:password]

		user = User.where("login = ? and password = ?", login, password)[0]

		if user.nil?
			redirect_to :controller => "home", :action => "login"	
		else
			session["user_id"] = user.id
			session["user_name"] = user.name
			redirect_to :controller => "home", :action => "index"
		end
	end

	def sign_out
		session["user_id"] = nil
		session["user_name"] = nil
		redirect_to :controller => "home", :action => "login"
	end
end
