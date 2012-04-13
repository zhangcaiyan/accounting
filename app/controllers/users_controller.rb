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
      statu = if current_user
        !(User.exists?(username: params[:fieldValue]) && current_user.username != params[:fieldValue].strip)
      else
        !User.exists?(username: params[:fieldValue])
      end
      render text: ["user_username", statu]
    end
  end

end
