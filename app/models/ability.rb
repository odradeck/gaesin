class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new # guest user (not logged in)
    alias_action :create, :read, :update, :destroy, :to => :crud
    alias_action :update, :destory, :to => :modify

    if user.admin?
      can :manage, :all
    elsif user.roles 
      can :create, Post if user.is? :author
      can :crud, Post if user.is? :moderator

      can :create, Question if user.is? :member
      can :create, Comment if user.is? :member

      can :modify, Post, :user_id => user.id
      can :modify, Question, :user_id => user.id
      can :modify, Comment, :user_id => user.id
    end
      

    #for anyone
      can :read, Post
      can :read, Comment
      can :read, Question
      can :create, Contact
    
    
 
  end
end
