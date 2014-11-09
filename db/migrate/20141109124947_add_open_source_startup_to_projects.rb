class AddOpenSourceStartupToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :open_source, :boolean
    add_column :projects, :startup, :boolean
  end
end
