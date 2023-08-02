class PostsController < ApplicationController
  before_action :require_user_logged_in!
  
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to root, notice: "Post Added."
    else
      render :new
    end
  end

  private
  
  def post_params
    params.require(:post).permit(:caption, :image)
  end
end
