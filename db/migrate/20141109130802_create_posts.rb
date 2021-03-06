class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :slug
      t.string :description
      t.string :keywords
      t.text :content

      t.timestamps
    end
  end
end
