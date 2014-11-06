class AdminController < ApplicationController

	before_action :authenticate_user!
	before_action :check_permision!

	layout "admin"

	def index
	end

	protected

	def check_permision!
		unless current_user.has_role :admin
			redirect_to :root_path
		end
	end

end