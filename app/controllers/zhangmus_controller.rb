# coding: utf-8

class ZhangmusController < ApplicationController


  # GET /zhangmus/1
  # GET /zhangmus/1.xml
  def show
    @zhangmu = current_user.zhangmus.find(params[:id])
  end

  # GET /zhangmus/new
  # GET /zhangmus/new.xml
  def new
    @zhangbens = current_user.zhangbens.order(:position)
    @zhangmu = current_user.zhangmus.new(params[:zhangmu])
    @zhangmu.title = ""
    @fenleis = current_user.fenleis.where({shouzhi: @zhangmu.shouzhi}).order(:position)
    @peoples = current_user.peoples.order(:position)
    @search = current_user.zhangmus.search(params[:search])
    @zhangmus = @search.page(params[:page]).per_page(20).order('created_at DESC')
  end

  # GET /zhangmus/1/edit
  def edit
    @zhangbens = current_user.zhangbens.order(:position)
    @zhangmu = current_user.zhangmus.find(params[:id])
    @fenleis = current_user.fenleis.where({shouzhi: @zhangmu.shouzhi}).order(:position)
    @peoples = current_user.peoples.order(:position)
  end

  # POST /zhangmus
  # POST /zhangmus.xml
  def create
    @zhangmu = current_user.zhangmus.new(params[:zhangmu])
    if @zhangmu.save
      redirect_to new_zhangmu_path(:zhangmu => params[:zhangmu]), :notice => '新建一条帐目'
    else
      @search = current_user.zhangmus.search(params[:search])
      @zhangmus = @search.page(params[:page]).per_page(params[:per_page] || 20).order('created_at DESC')
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

  def percentage
    zhangmus = current_user.zhangmus.search(params[:search])
    current_month_zhangmus = current_user.zhangmus.search({created_at_gte: Date.current.at_beginning_of_month, created_at_lt: Date.current.at_end_of_month+1})
    render json:  {quanbu: Zhangmu.fenleibi(zhangmus), yue: Zhangmu.fenleibi(current_month_zhangmus), quanbu_title: "全部支出饼图(#{Zhangmu.quanbu_zhichu(zhangmus)}￥)", yue_title: "当月支出饼图 (#{Zhangmu.quanbu_zhichu(current_month_zhangmus)}￥)"}
  end



end

