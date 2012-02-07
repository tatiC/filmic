class FilmesController < ApplicationController
  # GET /filmes
  # GET /filmes.json
  def index
    @filmes = Filme.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @filmes }
    end
  end

  # GET /filmes/1
  # GET /filmes/1.json
  def show
    @filme = Filme.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @filme }
    end
  end

  # GET /filmes/new
  # GET /filmes/new.json
  def new
    @filme = Filme.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @filme }
    end
  end

  # GET /filmes/1/edit
  def edit
    @filme = Filme.find(params[:id])
  end

  # POST /filmes
  # POST /filmes.json
  def create
    @filme = Filme.new(params[:filme])

    respond_to do |format|
      if @filme.save
        format.html { redirect_to @filme, notice: 'Filme was successfully created.' }
        format.json { render json: @filme, status: :created, location: @filme }
      else
        format.html { render action: "new" }
        format.json { render json: @filme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /filmes/1
  # PUT /filmes/1.json
  def update
    @filme = Filme.find(params[:id])

    respond_to do |format|
      if @filme.update_attributes(params[:filme])
        format.html { redirect_to @filme, notice: 'Filme was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @filme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /filmes/1
  # DELETE /filmes/1.json
  def destroy
    @filme = Filme.find(params[:id])
    @filme.destroy

    respond_to do |format|
      format.html { redirect_to filmes_url }
      format.json { head :no_content }
    end
  end
end
