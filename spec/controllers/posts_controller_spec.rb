require 'rails_helper'

RSpec.describe PostsController, type: :controller do

<<<<<<< HEAD
=======
  def index
    @posts = Post.all
  end

  def show 
    @post = Post.find(params[:id])
  end

>>>>>>> 2905e72d927fd41518bb7ba52e3d68bf1ffabf98
end
