class Admin::ProjectsController < AdminController

  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index 
    @projects = Project.all
  end

  
  def show
  end

  def new
    @project = Project.new
  end

  def create
     @project = Project.new(project_params)
    if @project.save
      redirect_to edit_admin_project_path(@project), notice: "Dodano projekt"
    else
      render action: "new"
    end
  end

  def edit
    
  end

  def update
    if @project.update_attributes(project_params)
      redirect_to edit_admin_project_path(@project), notice: "Projekt zapisany"
    else
      render action: "edit"
    end
  end

  def destroy 
    if @project.delete
      redirect_to admin_projects_path, notice: "Project usuniety"
    else
      redirect_to admin_projects_path, notice: "Wystapil problem przy usuaniu"
    end
  end

  protected

  def set_project
    @project = Project.friendly.find(params[:id])  
  end

  def project_params
    params.require(:project).permit(:title, :keywords, :description, :what_i_did, :about, :content, :link, :image, :startup, :open_source, project_category_ids: [], project_tag_ids: [], project_images_attributes: [:id, :foto, :_destroy])
  end

end