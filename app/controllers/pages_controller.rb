class PagesController < ApplicationController
  def index
    @posts = Post.limit(5)
  end

  def show
  end

  def new
  end

  def edit
  end
end
