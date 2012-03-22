# coding: utf-8

class UsersController < ApplicationController
  skip_before_filter :authenticate_user!

  def verify_email_exist
    if request.xhr?
      render text: ["user_email", !User.exists?(email: params[:fieldValue])]
    end
  end

  def verify_username_exist
    if request.xhr?
      render text: ["user_username", !User.exists?(username: params[:fieldValue])]
    end
  end

end
