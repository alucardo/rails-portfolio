class CreateProjectCategoriesProjects < ActiveRecord::Migration
  def change
    create_table :project_categories_projects do |t|
      t.integer :project_category_id
      t.integer :project_id
    end
  end
end
