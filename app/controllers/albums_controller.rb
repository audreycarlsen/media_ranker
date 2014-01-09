class AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :edit, :update, :destroy, :upvote]
  
  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to album_path(@album.id)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @album.update(album_params)
      if params[:album][:upvote]
        redirect_to :back
      else
        redirect_to album_path(@album.id)
      end
    else
      render :edit
    end
  end

  def destroy
    @album.destroy
    redirect_to albums_path
  end

  private

  def album_params
    params.require(:album).permit(:title, :artist, :description, :upvote)
  end

  def set_album
    @album = Album.find(params[:id])
  end

end