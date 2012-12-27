class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :title
      t.integer :admin_user_id
      t.string :read_perm
      t.string :write_perm
      t.integer :group_id

      t.timestamps
    end
  end
end
