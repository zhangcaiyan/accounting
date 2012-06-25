#coding: utf-8

class PeoplesController < ApplicationController
  before_filter :peoples, except: :index

  def index
    @peoples = current_user.peoples.search(params[:search])
  end

  def new
    @people = peoples.new
  end

  def show
    @people = peoples.find(params[:id])
  end

  def edit
    @people = peoples.find(params[:id])
  end

  def update
    @people = peoples.find(params[:id])
    if @people.update_attributes(params[:people])
      redirect_to peoples_path, notice: "更新人员成功"
    else
      render "edit"
    end
  end

  def create
    @people = peoples.new(params[:people])
    if @people.save
      redirect_to peoples_path, notice: "创建人员成功"
    else
      render "new" 
    end

  end

  def destroy
    @people = peoples.find(params[:id])
    @people.destroy
    redirect_to peoples_path
  end

  def set_default
    @people = peoples.find(params[:id])
    @people.move_to_top
    render nothing: true
  end

  private

  def peoples
    @peoples = current_user.peoples
  end
end
