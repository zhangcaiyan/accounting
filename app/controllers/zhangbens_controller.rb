# coding: utf-8

class ZhangbensController < ApplicationController
  def index
  end

  def show
    if request.xhr?
      @zhangben = Zhangben.find(params[:id])
      render json: @zhangben.fenleis
    end
  end

end
