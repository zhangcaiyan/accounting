# coding: utf-8

class ZhangbensController < ApplicationController
  before_filter :zhangbens

  def index
  end

  def new
    @zhangben = zhangbens.new
  end

  def show
    @zhangben = zhangbens.find(params[:id])
  end

  def edit
    @zhangben = zhangbens.find(params[:id])
  end

  def update
    @zhangben = zhangbens.find(params[:id])
    if @zhangben.update_attributes(params[:zhangben])
      redirect_to @zhangben, notice: "更新账本成功"
    else
      render "edit"
    end
  end

  def create
    @zhangben = zhangbens.new(params[:zhangben])
    if @zhangben.save
      redirect_to @zhangben, notice: "创建账本成功"
    else
      render "new"
    end
  end

  def set_default
     @zhangben = zhangbens.find(params[:id])
     @zhangben.move_to_top
     render nothing: true
  end

  def destroy
    @zhangben = zhangbens.find(params[:id])
    @zhangben.destroy
    redirect_to zhangbens_path
  end

  private

  def zhangbens
    @zhangbens = current_user.zhangbens
  end
end
