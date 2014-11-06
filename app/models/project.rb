class Project < ActiveRecord::Base
  has_and_belongs_to_many :project_tags
  has_and_belongs_to_many :project_categories
end
