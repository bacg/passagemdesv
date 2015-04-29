class HomeController < ApplicationController
  def index
  	if session[:user]
  		@user = session[:user]
  		@user_logged = @user["name"]
  		else
  		redirect_to(login_path)	
  	end
  end
end
