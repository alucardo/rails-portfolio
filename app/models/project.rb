class Project < ActiveRecord::Base

  mount_uploader :image, ProjectPhotoUploader
  default_scope { order('created_at ASC') }

  extend FriendlyId
  friendly_id :title, use: :slugged

  has_and_belongs_to_many :project_tags
  has_and_belongs_to_many :project_categories
end
