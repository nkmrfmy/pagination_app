class PostsController < ApplicationController
  PER_PAGE = 10

  def index
    @posts = Post.all.order(created_at: :desc).page(params[:page]).per(PER_PAGE)
  end

  def create
  end
end
