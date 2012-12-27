class Board < ActiveRecord::Base
  attr_accessible :admin_user_id, :group_id, :read_perm, :title, :write_perm
end
