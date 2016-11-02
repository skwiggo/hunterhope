class PhotosController < ApplicationController

  def index
    photos = Photo.all()
    render :json => photos
  end

  def show
    photo = Photo.find(params[:id])
    render :json => photo
  end

  def create
    photo = Photo.create(photo_params)
    render :json => photo
  end

  def update
    photo = Photo.find(params[:id])
    if photo.update_attributes(photo_params)
      render json: photo
    else
      render json: {status: :update_failed}
    end
  end

  def destroy
    photo = Photo.find(params[:id])
    if photo.destroy!
        render json: {status: :success}
    else
      render json: {status: :delete_failed}
    end
  end

  private
  def photo_params
    params.require(:photo).permit([:newpost])
  end
end