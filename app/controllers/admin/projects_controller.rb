class Admin::ProjectsController < AdminController

  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index 
    @projects = Project.all
  end

  protected

    def set_project

    end

    def project_params
    end


end