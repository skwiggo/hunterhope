class SongsController < ApplicationController

  def index
    songs = Song.all()
    render :json => songs
  end

  def show
    song = Song.find(params[:id])
    render :json => song
  end

  def create
    song = Song.create(song_params)
    render :json => song
  end

  def update
    song = Song.find(params[:id])
    if song.update_attributes(song_params)
      render json: song
    else
      render json: {status: :update_failed}
    end
  end

  def destroy
    song = Song.find(params[:id])
    if song.destroy!
        render json: {status: :success}
    else
      render json: {status: :delete_failed}
    end
  end

  private
  def song_params
    params.require(:song).permit([:name, :lyrics, :spotify, :itunes])
  end
end