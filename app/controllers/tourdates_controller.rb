class TourdatesController < ApplicationController

  def index
    tourdates = Tourdate.all()
    render :json => tourdates
  end

  def show
    tourdate = Tourdate.find(params[:id])
    render :json => tourdate
  end

  def create
    tourdate = Tourdate.create(tourdate_params)
    render :json => tourdate
  end

  def update
    tourdate = Tourdate.find(params[:id])
    if tourdate.update_attributes(tourdate_params)
      render json: tourdate
    else
      render json: {status: :update_failed}
    end
  end

  def destroy
    tourdate = Tourdate.find(params[:id])
    if tourdate.destroy!
        render json: {status: :success}
    else
      render json: {status: :delete_failed}
    end
  end

  private
  def tourdate_params
    params.require(:tourdate).permit([:name, :lyrics, :spotify, :itunes])
  end
end