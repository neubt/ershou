module Ershou

  class Ability
    include CanCan::Ability

    def initialize(user)

      user ||= User.new

      can :create,  Topic
      can :read,    Topic
      can :update,  Topic
      can :destroy, Topic
      can :close,  Topic, :user_id => user.id
      can :open,  Topic, :user_id => user.id
      
      can :create,  Comment
      can :read,    Comment
      can :update,  Comment, :user_id => user.id
      can :destroy, Comment
    end
  end

end
