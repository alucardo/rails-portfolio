class Admin::PagesController < AdminController 

  before_action :set_page, only: [:show, :edit, :update, :destroy]

  def index 
    @pages = Page.all
  end

  def show
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    if @page.save
      redirect_to admin_pages_path, notice: "Dodano stronę"
    else
      render action: "new"
    end
  end

  def edit
  end

  def update 
    if @page.update_attributes(page_params)
      redirect_to edit_admin_page_path(@page), notice: "Strona zapisana"
    else
      render action: "edit"
    end
  end

  def destroy
    if @page.delete
      redirect_to admin_pages_path, notice: "Strona usunięta"
    else
      redirect_to admin_pages_path, notice: "Wystapil problem przy usuaniu"
    end
  end

  protected

  def set_page
    @page = Page.friendly.find(params[:id])
  end

  def page_params
    params.require(:page).permit(:title, :slug, :desription, :keywords, :content)
  end


end
