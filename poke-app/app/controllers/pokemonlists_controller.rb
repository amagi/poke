class PokemonlistsController < ApplicationController
  # GET /pokemonlists
  # GET /pokemonlists.json
  def index
    @pokemonlists = Pokemonlist.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pokemonlists }
    end
  end

  # GET /pokemonlists/1
  # GET /pokemonlists/1.json
  def show
    @pokemonlist = Pokemonlist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pokemonlist }
    end
  end

  # GET /pokemonlists/new
  # GET /pokemonlists/new.json
  def new
    @pokemonlist = Pokemonlist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pokemonlist }
    end
  end

  # GET /pokemonlists/1/edit
  def edit
    @pokemonlist = Pokemonlist.find(params[:id])
  end

  # POST /pokemonlists
  # POST /pokemonlists.json
  def create
    @pokemonlist = Pokemonlist.new(params[:pokemonlist])

    respond_to do |format|
      if @pokemonlist.save
        format.html { redirect_to @pokemonlist, notice: 'Pokemonlist was successfully created.' }
        format.json { render json: @pokemonlist, status: :created, location: @pokemonlist }
      else
        format.html { render action: "new" }
        format.json { render json: @pokemonlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pokemonlists/1
  # PUT /pokemonlists/1.json
  def update
    @pokemonlist = Pokemonlist.find(params[:id])

    respond_to do |format|
      if @pokemonlist.update_attributes(params[:pokemonlist])
        format.html { redirect_to @pokemonlist, notice: 'Pokemonlist was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pokemonlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pokemonlists/1
  # DELETE /pokemonlists/1.json
  def destroy
    @pokemonlist = Pokemonlist.find(params[:id])
    @pokemonlist.destroy
    
    @pokemonlist = Pokemonlist.all
    p @pokemonlist
    @pokemonlist.clear
    respond_to do |format|
      format.html { redirect_to pokemonlists_url }
      format.json { head :no_content }
    end
  end
  
  def datail
    
  end
end
