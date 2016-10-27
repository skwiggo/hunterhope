class BlogpostsController < ApplicationController

  def index
    blogposts = Blogpost.all()
    render :json => blogposts
  end

  def show
    blogpost = Blogpost.find(params[:id])
    render :json => blogpost
  end

  def create
    blogpost = Blogpost.create(blogpost_params)
    render :json => blogpost
  end

  def update
    blogpost = Blogpost.find(params[:id])
    if blogpost.update_attributes(blogpost_params)
      render json: blogpost
    else
      render json: {status: :update_failed}
    end
  end

  def destroy
    blogpost = Blogpost.find(params[:id])
    if blogpost.destroy!
        render json: {status: :success}
    else
      render json: {status: :delete_failed}
    end
  end

  private
  def blogpost_params
    params.require(:blogpost).permit([:newpost])
  end
end