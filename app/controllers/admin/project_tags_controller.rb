class Admin::ProjectTagsController < AdminController 

	def index
	end

	def show
	end

	def new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy 
	end

	protected

	def set_tag
		@tag = ProjectTag.find(prams[:id])		
	end

	def tag_params
		params.require(:project_tag).permit(:name)
	end


end