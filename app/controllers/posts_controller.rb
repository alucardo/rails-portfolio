class PostsController < ApplicationController 

  def index
    @posts = Post.paginate(:page => params[:page])
  end

  def show
    @post = Post.friendly.find(params[:id])  
  end

  

end