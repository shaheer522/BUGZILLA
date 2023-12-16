# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)

    if user.manager? 
      can :manage ,:all
    else
      can :read, :all
      can :update, Project
      can :update, Bug
    end
  end
end
