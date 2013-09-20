class Board < ActiveRecord::Base
  attr_accessible :admin_user_id, :group_id, :title, :board_type, :roles_mask, :roles, :show, :description

  belongs_to :group
  has_many :posts

  scope :published, where(show:true)

  def roles=(roles)
    self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.inject(0, :+)
  end

  def roles
    ROLES.reject do |r|
      ((roles_mask.to_i || 0) & 2**ROLES.index(r)).zero?
    end
  end

  def is?(role)
    roles.include?(role.to_s)
  end
  
end
