class AddPublishedAndWriteScopeToBoards < ActiveRecord::Migration
  def change
    add_column :posts, :published, :boolean, :default=>false
    add_column :boards, :roles_mask, :integer
  end
end
