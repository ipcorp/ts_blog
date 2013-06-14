class PostsController < ApplicationController

  def index
    @posts = if params[:query].present?
      Post.search(params[:query]).order(:created_at)
    else
      Post.all
    end
  end

end
