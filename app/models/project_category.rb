class ProjectCategory < ActiveRecord::Base

  extend FriendlyId
  friendly_id :name, use: :slugged
  has_and_belongs_to_many :projects
end
