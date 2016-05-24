require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  def index
    @posts = Post.all
  end

  def show 
    @post = Post.find(params[:id])
  end

end
