class PostsController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end
  
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
  end  

  def edit 
  end

  def update 
    if @post.save
      @post.update(post_params)
      redirect_to(post_path(@post))
      flash[:success] = "Post updated."
    else
      redirect_to(post_path(@post))
      flash[:alert] = "Whoops!"
    end
  end

  def destroy  
    @post.destroy
    redirect_to posts_path
    flash[:success] = "Post deleted!"
  end  

  private

  def post_params
    params.require(:post).permit(:caption, :image)
  end

  def set_post 
    @post = Post.find(params[:id])
  end

end

