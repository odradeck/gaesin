class CreateBCategories < ActiveRecord::Migration
  def change
    create_table :b_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
