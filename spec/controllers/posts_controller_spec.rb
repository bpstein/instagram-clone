require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  def index
  end

  def show 
    @post = Post.find(params[:id])
  end

end
