class AuthsController < ApplicationController
  def new
	if session[:user_id]
		redirect_to dashboards_path
	end
  end

  def create
    #TODO to add default is-active 0 and mail functionality to activate
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to dashboards_path, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end
