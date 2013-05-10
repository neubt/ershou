module Ershou

  class Ability
    include CanCan::Ability

    def initialize(user)

      user ||= User.new

      can :preview, Topic
      can :create,  Topic
      can :read,    Topic
      can :update,  Topic
      can :destroy, Topic

      can :close,  Topic, :new_record? => false, :user_id => user.id, :state => "open"
      can :open,  Topic, :new_record? => false, :user_id => user.id, :state => "closed"
      
      can :preview, Comment
      can :create,  Comment
      can :read,    Comment
      can :update,  Comment, :user_id => user.id
      can :destroy, Comment
    end
  end

end
