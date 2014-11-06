class CreateProductTagsJoinTable < ActiveRecord::Migration
  def change
    create_join_table :products, :product_tags do |t|
      # t.index [:product_id, :product_tag_id]
      # t.index [:product_tag_id, :product_id]
    end
  end
end
