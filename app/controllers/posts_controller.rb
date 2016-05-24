class PostsController < ApplicationController

  def new 
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      flash[:success] = "Success! Post created."
      redirect_to @post
    else
      flash[:alert] = "You need to provide an image before you post!"
      render :new
    end
  end

  def show  
    @post = Post.find(params[:id])
  end  

  def index
    @posts = Post.all
  end

  private

  def post_params
    params.require(:post).permit(:caption, :image)
  end

end

