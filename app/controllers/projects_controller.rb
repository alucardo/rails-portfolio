class ProjectsController < ApplicationController

  before_action :set_project, only: [:show]

  def index 
    @projects = Project.all
    @categories = ProjectCategory.all
  end

  
  def show
  end

  protected

  def set_project
    @project = Project.friendly.find(params[:id])  
  end


end