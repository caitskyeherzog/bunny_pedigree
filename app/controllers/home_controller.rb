class HomeController < ApplicationController
  def login
  end

  def authenticate
  	#does user exist
  	@user = User.find_by(email: params[:email])
  	if @user && @user.validate?(params[:password])
  		session[:user_id] = @user.id 
  		redirect_to bunnies_path
  	else 
  		flash[:error] = "Invalid Username or Password"
  		render :login
  	end
  	#is the password correct

  	#save id to session
  	#redirect to bunnies page
  end

end
