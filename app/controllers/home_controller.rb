class HomeController < ApplicationController
	before_action :verify_login, only: [:index] 
	
	def index

	end

	def login
		render layout: false
	end

	def sign_in
		email = params[:user][:email]
		password = params[:user][:password]

		user = User.where(email: email, password: password)[0]

		if user.nil?
			flash[:notice] = "Senha ou email incorreto!"
			redirect_to :controller => "home", :action => "login"	
		else
			session["user_id"] = user.id
			session["user_name"] = user.name
			session["user_email"] = user.email
			session["enterprise_id"] = user.enterprise_id
			redirect_to :controller => "home", :action => "index"
		end
	end

	def sign_out
		session["user_id"] = nil
		session["user_name"] = nil
		redirect_to :controller => "home", :action => "login"
	end
end
