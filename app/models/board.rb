class Board < ActiveRecord::Base
  attr_accessible :admin_user_id, :group_id, :title, :board_type,
  		:new_owner, :show_onwer, :update_owner,
  		:new_group, :show_group, :update_group,
  		:new_public, :show_public, :update_public

  belongs_to :group

end
