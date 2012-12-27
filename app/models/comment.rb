class Comment < ActiveRecord::Base
  attr_accessible :contents, :post_id, :user_id
end
