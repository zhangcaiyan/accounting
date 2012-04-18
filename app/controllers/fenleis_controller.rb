#coding: utf-8

class FenleisController < ApplicationController
  before_filter :fenleis, except: :index

  def index
    @search = current_user.fenleis.search(params[:search])
    @fenleis = @search.order("shouzhi DESC")
  end

  def new
    @fenlei = fenleis.new
  end

  def show
    @fenleis = fenleis.where({shouzhi: params[:shouzhi]})
    if request.xhr?
      render json: @fenleis
    end
  end

  def edit
    @fenlei = fenleis.find(params[:id])
  end

  def update
    @fenlei = fenleis.find(params[:id])
    if @fenlei.update_attributes(params[:fenlei])
      redirect_to fenleis_path, notice: "更新分类成功"
    else
      render "edit"
    end
  end

  def create
    @fenlei = fenleis.new(params[:fenlei])
    if @fenlei.save
      redirect_to fenleis_path, notice: "创建分类成功"
    else
      render "new" 
    end

  end

  def destroy
    @fenlei = fenleis.find(params[:id])
    @fenlei.destroy
    redirect_to fenleis_path
  end

  private

  def fenleis
    @fenleis = current_user.fenleis
  end
end
