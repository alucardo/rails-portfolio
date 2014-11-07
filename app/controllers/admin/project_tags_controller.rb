class Admin::ProjectTagsController < AdminController 

	before_action :set_tag, only: [:show, :edit, :update, :destroy]

	def index
		@project_tags = ProjectTag.all
	end

	def show
	end

	def new
		@tag = ProjectTag.new
	end

	def create
		 @tag = ProjectTag.new(tag_params)
    if @tag.save
      redirect_to admin_project_tags_path, notice: "Dodano tag"
    else
      render action: "new"
    end
	end

	def edit
		
	end

	def update
    if @tag.update_attributes(tag_params)
      redirect_to admin_project_tags_path, notice: "Tag zapisany"
    else
      render action: "edit"
    end
	end

	def destroy 
		if @tag.delete
      redirect_to admin_project_tags_path, notice: "Tag usuniety"
    else
      redirect_to admin_project_tags_path, notice: "Wystapil problem przy usuaniu"
    end
	end

	protected

	def set_tag
		@tag = ProjectTag.friendly.find(params[:id])	
	end

	def tag_params
		params.require(:project_tag).permit(:name)
	end


end