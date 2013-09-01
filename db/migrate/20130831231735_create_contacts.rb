class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :email
      t.string :name
      t.integer :user_id
      t.string :title
      t.text :body
      t.string :contact_type
      t.string :phone

      t.timestamps
    end
  end
end
