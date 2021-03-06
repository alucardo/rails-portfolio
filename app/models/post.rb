class Post < ActiveRecord::Base

  mount_uploader :image, PostPhotoUploader

  default_scope { order('created_at DESC') }
   
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_and_belongs_to_many :post_categories

  self.per_page = 10
end
