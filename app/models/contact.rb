class Contact < ActiveRecord::Base
  attr_accessible :body, :contact_type, :email, :name, :phone, :title, :user_id
end
