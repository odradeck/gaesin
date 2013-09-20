class AddShowToBoards < ActiveRecord::Migration
  def change
    add_column :boards, :show, :boolean, :default=>false
  end
end
