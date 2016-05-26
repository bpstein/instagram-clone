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

  def edit 
    @post = Post.find(params[:id])
  end

  def update 
    @post = Post.find(params[:id])
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
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
    flash[:success] = "Post deleted!"
  end  

  private

  def post_params
    params.require(:post).permit(:caption, :image)
  end

end

