class SessionsController < ApplicationController
  

  def new
  end

  def create
  	login = params[:login]
  	pass = params[:password]

  	puts login
  	puts pass

  	user = User.where(login: params[:session][:login], password: params[:session][:password]).first
  	
  	if user
  		puts "validei usuario"
  		session[:user] = user
  		puts user.id
  		#log_in user
  		redirect_to(:controller => 'home', :action => 'index')

  	else
  		flash.now[:danger] = 'Login/Senha inválidos!'
  		render 'new'
  	end
  	
  end

  def destroy
  	#log_out
  	reset_session	
  	redirect_to root_url
  end
end
