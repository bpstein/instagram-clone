class PostsController < ApplicationController
<<<<<<< HEAD
  def index
    @posts = Post.all
  end

  def new
=======

  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end
  
  def new 
>>>>>>> 2905e72d927fd41518bb7ba52e3d68bf1ffabf98
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
<<<<<<< HEAD
    if @post.save 
      flash[:success] = 'Your post was created successfully.'
      redirect_to @post 
    else
      flash[:alert] = 'You must upload an image!'
=======
    if @post.save
      flash[:success] = "Success! Post created."
      redirect_to @post
    else
      flash[:alert] = "You need to provide an image before you post!"
>>>>>>> 2905e72d927fd41518bb7ba52e3d68bf1ffabf98
      render :new
    end
  end

<<<<<<< HEAD
  def show
    @post = Post.find(params[:id])    
  end

  private 
=======
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
>>>>>>> 2905e72d927fd41518bb7ba52e3d68bf1ffabf98

  def post_params
    params.require(:post).permit(:caption, :image)
  end
<<<<<<< HEAD
end
=======

  def set_post 
    @post = Post.find(params[:id])
  end

end

>>>>>>> 2905e72d927fd41518bb7ba52e3d68bf1ffabf98
