class Project < ActiveRecord::Base

  mount_uploader :image, ProjectPhotoUploader
  default_scope { order('created_at DESC') }

  extend FriendlyId
  friendly_id :title, use: :slugged

  has_and_belongs_to_many :project_tags
  has_and_belongs_to_many :project_categories
  has_many :project_images
  accepts_nested_attributes_for :project_images, :reject_if => :all_blank, :allow_destroy => true
end
