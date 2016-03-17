class DatasetPolicy < ApplicationPolicy
  def index?
    user.present?
  end

  def create?
    user.present?
  end

  def update?
    user.present?
  end

  def destroy?
    user.present?
  end

  def permitted_attributes
    [:name, :description]
  end

  class Scope < Scope
    def resolve
      scope.where(id: user.datasets.select(:id))
    end
  end
end
