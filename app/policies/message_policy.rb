class MessagePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def index?
    true
  end

  def create?
    return true
  end

  def destroy?
    record.user == user
  end
end
