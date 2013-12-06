class User < ActiveRecord::Base
  before_create :set_default_role
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable :validatable
  devise :database_authenticatable, :registerable, :validatable,
         :recoverable, :rememberable, :trackable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :password, :password_confirmation, :current_password
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :uid, :name, :phone
  
  #for Oauth
  has_many :services, :dependent => :destroy
  attr_accessible :roles

  has_many :posts

  def roles=(roles_input)
    roles = Array(roles_input)
    self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.inject(0, :+)
  end

  def roles
    ROLES.reject do |r|
      ((roles_mask.to_i || 0) & 2**ROLES.index(r)).zero?
    end
  end

  def roles_ko
    ROLES_KO.reject do |r|
      ((roles_mask.to_i || 0) & 2**ROLES_KO.index(r)).zero?
    end
  end

  def role_ko
    self.roles_ko.first
  end

  def is?(role)
    roles.include?(role.to_s)
  end

  def set_default_role
    self.roles="member"
  end


end
