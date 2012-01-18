# coding: utf-8

class ZhangmusController < ApplicationController
  # GET /zhangmus
  # GET /zhangmus.xml
  def index
    @zhangmu = Zhangmu.new
    @zhangmus = Zhangmu.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @zhangmus }
    end
  end

  # GET /zhangmus/1
  # GET /zhangmus/1.xml
  def show
    @zhangmu = Zhangmu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @zhangmu }
    end
  end

  # GET /zhangmus/new
  # GET /zhangmus/new.xml
  def new
    @zhangmu = Zhangmu.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @zhangmu }
    end
  end

  # GET /zhangmus/1/edit
  def edit
    @zhangmu = Zhangmu.find(params[:id])
  end

  # POST /zhangmus
  # POST /zhangmus.xml
  def create
    @zhangmu = Zhangmu.new(params[:zhangmu])

    respond_to do |format|
      if @zhangmu.save
        format.html { redirect_to(zhangmus_path, :notice => '新建一条帐目.') }
        format.xml  { render :xml => @zhangmu, :status => :created, :location => zhangmus_path }
      else
        format.html { render :action => "index" }
        format.xml  { render :xml => @zhangmu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /zhangmus/1
  # PUT /zhangmus/1.xml
  def update
    @zhangmu = Zhangmu.find(params[:id])

    respond_to do |format|
      if @zhangmu.update_attributes(params[:zhangmu])
        format.html { redirect_to(@zhangmu, :notice => 'Zhangmu was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @zhangmu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /zhangmus/1
  # DELETE /zhangmus/1.xml
  def destroy
    @zhangmu = Zhangmu.find(params[:id])
    @zhangmu.destroy

    respond_to do |format|
      format.html { redirect_to(zhangmus_url) }
      format.xml  { head :ok }
    end
  end
end
