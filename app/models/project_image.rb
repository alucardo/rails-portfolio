class ProjectImage < ActiveRecord::Base

  mount_uploader :foto, ProjectUploader

  belongs_to :project
end
