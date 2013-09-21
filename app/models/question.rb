class Question < ActiveRecord::Base
  attr_accessible :contents, :title, :user_id

  belongs_to :user
  has_many :comments, as: :commentable
end
