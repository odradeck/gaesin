class AddCommentIdAndQuestionIdToComments < ActiveRecord::Migration
  def change
  	add_column :comments, :parent_id, :integer
  	add_column :comments, :parent_type, :string
  	remove_column :comments, :post_id
  end
end
