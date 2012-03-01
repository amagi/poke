class ButtlelistsController < ApplicationController
  # GET /buttlelists
  # GET /buttlelists.json
  def index
    @buttlelists = Buttlelist.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @buttlelists }
    end
  end

  # GET /buttlelists/1
  # GET /buttlelists/1.json
  def show
    @buttlelist = Buttlelist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @buttlelist }
    end
  end

  # GET /buttlelists/new
  # GET /buttlelists/new.json
  def new
    @buttlelist = Buttlelist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @buttlelist }
    end
  end

  # GET /buttlelists/1/edit
  def edit
    @buttlelist = Buttlelist.find(params[:id])
  end

  # POST /buttlelists
  # POST /buttlelists.json
  def create
    @buttlelist = Buttlelist.new(params[:buttlelist])

    respond_to do |format|
      if @buttlelist.save
        format.html { redirect_to @buttlelist, notice: 'Buttlelist was successfully created.' }
        format.json { render json: @buttlelist, status: :created, location: @buttlelist }
      else
        format.html { render action: "new" }
        format.json { render json: @buttlelist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /buttlelists/1
  # PUT /buttlelists/1.json
  def update
    @buttlelist = Buttlelist.find(params[:id])

    respond_to do |format|
      if @buttlelist.update_attributes(params[:buttlelist])
        format.html { redirect_to @buttlelist, notice: 'Buttlelist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @buttlelist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buttlelists/1
  # DELETE /buttlelists/1.json
  def destroy
    @buttlelist = Buttlelist.find(params[:id])
    @buttlelist.destroy

    respond_to do |format|
      format.html { redirect_to buttlelists_url }
      format.json { head :no_content }
    end
  end
end
