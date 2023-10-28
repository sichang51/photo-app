class PhotosController < ApplicationController
  def index
    @photos = Photo.all
    render :index
  end

  def create
    @photo = Photo.create(
      name: params[:name],
      width: params[:width],
      height: params[:height],
    )
    render :show
  end

  def show
    @photo = Photo.find_by(id: params[:id])
    render :show
  end
end
