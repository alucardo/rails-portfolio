class Post < ActiveRecord::Base

  mount_uploader :image, PostPhotoUploader
   
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_and_belongs_to_many :post_categories
end
