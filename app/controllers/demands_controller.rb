# coding: utf-8

class DemandsController < ApplicationController
  # GET /demands
  # GET /demands.json
  def index
    @demands = Demand.order("created_at desc")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @demands }
    end
  end

  # GET /demands/1
  # GET /demands/1.json
  def show
    @demand = Demand.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @demand }
    end
  end

  # GET /demands/new
  # GET /demands/new.json
  def new
    @demand = Demand.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @demand }
    end
  end

  # GET /demands/1/edit
  def edit
    @demand = Demand.find(params[:id])
  end

  # POST /demands
  # POST /demands.json
  def create
    @demand = Demand.new(params[:demand])

    respond_to do |format|
      if @demand.save
        status = '登録に成功しました。'
      else
        status = '登録に失敗しました。'
      end
    # format.js { render action: "create.js.erb" json: { status: status } }    
      format.js { render action: "create.js.erb" }
    end
  end

  # PUT /demands/1
  # PUT /demands/1.json
  def update
    @demand = Demand.find(params[:id])

    respond_to do |format|
      if @demand.update_attributes(params[:demand])
        format.html { redirect_to @demand, notice: 'Demand was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @demand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demands/1
  # DELETE /demands/1.json
  def destroy
    @demand = Demand.find(params[:id])
    @demand.destroy

    respond_to do |format|
      format.html { redirect_to demands_url }
      format.json { head :no_content }
    end
  end
end
