class ReleasesController < ApplicationController

  def index
    releases = Release.all()
    render :json => releases.as_json(include: [:songs])
  end

  def show
    release = Release.find(params[:id])
    render :json => release
  end

  def create
    release = Release.create(release_params)
    render :json => release
  end

  def update
    release = Release.find(params[:id])
    if release.update_attributes(release_params)
      render json: release
    else
      render json: {status: :update_failed}
    end
  end

  def destroy
    release = Release.find(params[:id])
    if release.destroy!
        render json: {status: :success}
    else
      render json: {status: :delete_failed}
    end
  end

  private
  def release_params
    params.require(:release).permit([:newpost])
  end
end