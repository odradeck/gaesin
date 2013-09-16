class Addboardaccess < ActiveRecord::Migration
  def change
    remove_column :boards, :read_perm
    remove_column :boards, :write_perm
  end
end
