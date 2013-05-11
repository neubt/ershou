module Ershou

  class Ability
    include CanCan::Ability

    def initialize(user)


      user ||= User.new

      can :preview, Topic
      can :create,  Topic
      can :read,    Topic
      can :update,  Topic, :user_id => user.id
      can :destroy, Topic, :user_id => user.id

      can :close,   Topic,   :new_record? => false, :user_id => user.id, :state => "open"
      can :open,    Topic,   :new_record? => false, :user_id => user.id, :state => "closed"
      
      can :preview, Comment
      can :create,  Comment if user.id
      can :read,    Comment
      can :update,  Comment, :user_id => user.id
      can :destroy, Comment, :user_id => user.id
      
      unless user.id
        cannot :create,  Topic
        cannot :create,  Comment
      end
    end
  end

end
