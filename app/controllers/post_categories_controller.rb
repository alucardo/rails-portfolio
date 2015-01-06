class PostCategoriesController < ApplicationController
  def show
    @category = PostCategory.friendly.find(params[:id])
    @posts = @category.posts.paginate(:page => params[:page])
  end
end