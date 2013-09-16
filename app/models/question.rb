class Question < ActiveRecord::Base
  attr_accessible :contents, :title, :user_id
end
