# coding: utf-8

class ZhangmusController < ApplicationController

  # GET /zhangmus/1
  # GET /zhangmus/1.xml
  def show
    @zhangmu = current_user.zhangmus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render xml: @zhangmu }
    end
  end

  # GET /zhangmus/new
  # GET /zhangmus/new.xml
  def new
    @zhangmu = current_user.zhangmus.new(params[:zhangmu])
    @search = current_user.zhangmus.search(params[:search])
    @zhangmus = @search.page(params[:page]).order('created_at DESC').per_page(params[:per_page] || 20)
  end

  # GET /zhangmus/1/edit
  def edit
    @zhangmu = current_user.zhangmus.find(params[:id])
  end

  # POST /zhangmus
  # POST /zhangmus.xml
  def create
    @zhangmu = current_user.zhangmus.new(params[:zhangmu])
    if @zhangmu.save
      redirect_to new_zhangmu_path(:zhangmu => params[:zhangmu]), :notice => '新建一条帐目'
    else
      @search = current_user.zhangmus.search(params[:search])
      @zhangmus = @search.page(params[:page]).order('created_at DESC').per_page(params[:per_page] || 20)
      render "new"
    
    end
  end

  # PUT /zhangmus/1
  # PUT /zhangmus/1.xml
  def update
    @zhangmu = current_user.zhangmus.find(params[:id])
    if @zhangmu.update_attributes(params[:zhangmu])
      redirect_to(new_zhangmu_path, :notice => '修改帐目成功')
    else
      render "edit"
    end
  end

  # DELETE /zhangmus/1
  # DELETE /zhangmus/1.xml
  def destroy
    @zhangmu = current_user.zhangmus.find(params[:id])
    @zhangmu.destroy
    redirect_to new_zhangmu_path
  end

end
