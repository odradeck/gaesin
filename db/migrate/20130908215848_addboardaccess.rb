class Addboardaccess < ActiveRecord::Migration
  def change
    add_column :boards, :new_owner, :boolean
    add_column :boards, :show_owner, :boolean
    add_column :boards, :update_owner, :boolean
    add_column :boards, :new_group, :boolean
    add_column :boards, :show_group, :boolean
    add_column :boards, :update_group, :boolean
    add_column :boards, :new_public, :boolean
    add_column :boards, :show_public, :boolean
    add_column :boards, :update_public, :boolean
    add_column :boards, :board_type, :string
    add_column :posts, :published, :boolean
    add_column :users, :group_id, :integer
    remove_column :boards, :read_perm
    remove_column :boards, :write_perm
  end
end
