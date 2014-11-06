class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :slug
      t.string :keywords
      t.string :description
      t.text :what_i_did
      t.text :about
      t.text :content
      t.string :link
      t.string :image

      t.timestamps
    end
  end
end
