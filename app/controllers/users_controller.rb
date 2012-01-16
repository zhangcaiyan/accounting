class UsersController < ApplicationController
  skip_before_filter :authenticate_user!

  def verify_email_exist
    if request.xhr?
      render :text => User.exists?(:email => params[:email])
    end
  end

  def verify_username_exist
    if request.xhr?
      render :text => User.exists?(:username => params[:username])
    end
  end

end
