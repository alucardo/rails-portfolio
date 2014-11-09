class CreateProjectTagsProjects < ActiveRecord::Migration
  def change
    create_table :project_tags_projects do |t|
      t.integer :project_tag_id
      t.integer :project_id
    end
  end
end
