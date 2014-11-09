class Admin::PostCategoriesController < AdminController 
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @post_categories = PostCategory.all
  end

  def show
  end

  def new
    @category = PostCategory.new
  end

  def create
    @category = PostCategory.new(category_params)
    if @category.save
      redirect_to admin_post_categories_path, notice: "Dodano kategorie"
    else
      render action: "new"
    end
  end

  def edit
    
  end

  def update
    if @category.update_attributes(category_params)
      redirect_to admin_post_categories_path, notice: "Kategoria zapisany"
    else
      render action: "edit"
    end
  end

  def destroy 
    if @category.delete
      redirect_to admin_post_categories_path, notice: "Kategoria usuniety"
    else
      redirect_to admin_post_categories_path, notice: "Wystapil problem przy usuaniu"
    end
  end

  protected

  def set_category
    @category = PostCategory.friendly.find(params[:id])  
  end

  def category_params
    params.require(:post_category).permit(:name, :slug)
  end

end