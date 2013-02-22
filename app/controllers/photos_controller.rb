class PhotosController < ApplicationController
  before_filter :load_allbum
  # GET /photos
  # GET /photos.json
  def index
    @photos = @allbum.photos
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
    @photo = @allbum.photos.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /photos/new
  # GET /photos/new.json
  def new
    @photo = @allbum.photos.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /photos/1/edit
  def edit
    @photo = @allbum.photos.find(params[:id])
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = @allbum.photos.new(params[:photo])
    respond_to do |format|
      if @photo.save
        format.html { redirect_to new_allbum_photo_path, notice:"Saved,You can add more images..." }
        format.json { render json: @photo, status: :created, location: @photo }
      else
        format.html { render action: "new" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /photos/1
  # PUT /photos/1.json
  def update
    @photo = @allbum.photos.find(params[:id])
#
    respond_to do |format|
      if @photo.update_attributes(params[:photo])
        format.html { redirect_to edit_allbum_photos_path(@allbum,@photo), notice: 'Photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo = @allbum.photos.find(params[:id])
    @photo.destroy

    respond_to do |format|
      format.html { redirect_to allbum_photos_path }
      format.json { head :no_content }
    end
  end

  protected
  def load_allbum
    #binding.pry
    @allbum = Allbum.find(params[:allbum_id])
  end

end
