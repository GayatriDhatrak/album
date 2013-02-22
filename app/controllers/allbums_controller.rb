class AllbumsController < ApplicationController
  # GET /allbums
  # GET /allbums.json
  def index
    #@allbums = Allbum.all
    @allbums = Allbum.page(params[:page]).per(3)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @allbums }
    end
  end

  # GET /allbums/1
  # GET /allbums/1.json
  def show
    @allbum = Allbum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @allbum }
    end
  end

  # GET /allbums/new
  # GET /allbums/new.json
  def new
    @allbum = Allbum.new
  end

  # GET /allbums/1/edit
  def edit
    @allbum = Allbum.find(params[:id])
  end

  # POST /allbums
  # POST /allbums.json
  def create
    @allbum = Allbum.new(params[:allbum])

      if @allbum.save
        redirect_to allbum_photos_path(@allbum), notice: 'Allbum was successfully created.' 
      else
        render :action=>"new" 
      end
   
  end

  def update
    @allbum = Allbum.find(params[:id])

    respond_to do |format|
      if @allbum.update_attributes(params[:allbum])
        format.html { redirect_to @allbum, notice: 'Allbum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @allbum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /allbums/1
  # DELETE /allbums/1.json
  def destroy
    @allbum = Allbum.find(params[:id])
    @allbum.destroy

    respond_to do |format|
      format.html { redirect_to allbums_url }
      format.json { head :no_content }
    end
  end
end
