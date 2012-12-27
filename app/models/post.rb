class Post < ActiveRecord::Base
  attr_accessible :addlink, :b_category_id, :board_id, :contents, :isnotice, :title, :user_id
end
