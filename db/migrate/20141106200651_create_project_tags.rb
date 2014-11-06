class CreateProjectTags < ActiveRecord::Migration
  def change
    create_table :project_tags do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end
  end
end