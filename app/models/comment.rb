class Comment < ActiveRecord::Base
  attr_accessible :contents, :user_id, :commentable_id, :commentable_type
  
  default_scope order('created_at DESC')

  belongs_to :user
  belongs_to :commentable, polymorphic: true


end
