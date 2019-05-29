class BicyclePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def edit?
    user && record.user == user
  end

  def update?
    user && record.user == user
  end

  def destroy?
    user && record.user == user
  end

  def new?
    true
  end

  def create?
    true
  end
end
