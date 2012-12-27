class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :board_id
      t.integer :user_id
      t.integer :b_category_id
      t.string :title
      t.text :contents
      t.string :addlink
      t.boolean :isnotice

      t.timestamps
    end
  end
end
