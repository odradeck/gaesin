class Post < ActiveRecord::Base
  attr_accessible :addlink, :b_category_id, :board_id, :contents, :isnotice, :title, :user_id,
  				:image, :remove_image, :published, :summary
  mount_uploader :image, ImageUploader

  scope :is_published, where(published:true)
  scope :is_draft, where(published:false)
  has_many :comments, as: :commentable
  belongs_to :board
  belongs_to :user
end
