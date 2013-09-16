class Post < ActiveRecord::Base
  attr_accessible :addlink, :b_category_id, :board_id, :contents, :isnotice, :title, :user_id,
  				:image, :remove_image, :published
  mount_uploader :image, ImageUploader

  has_many :comments
  belongs_to :board
end
