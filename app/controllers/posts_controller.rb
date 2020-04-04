class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def category
    @categories = Category.all

    
  end


end
