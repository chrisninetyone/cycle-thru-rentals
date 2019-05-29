class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    record.bicycle.user != user
  end

  def show?
    true
  end
end
