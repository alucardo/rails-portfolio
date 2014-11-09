class CreatePostCategoriesPosts < ActiveRecord::Migration
  def change
    create_table :post_categories_posts do |t|
      t.integer :post_id
      t.integer :post_category_id
    end
  end
end
