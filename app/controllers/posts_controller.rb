class PostsController < ApplicationController

  def index
    @posts = if params[:query].present?
      Post.search(params[:query])
    else
      Post.all
    end
  end

end
