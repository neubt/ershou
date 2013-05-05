module Ershou

  class Ability
    include CanCan::Ability

    def initialize(user)

      user ||= User.new

      can :create,  Topic
      can :read,    Topic
      can :update,  Topic
      can :destroy, Topic
      
      can :create,  Comment
      can :read,    Comment
      can :update,  Comment
      can :destroy, Comment
    end
  end

end