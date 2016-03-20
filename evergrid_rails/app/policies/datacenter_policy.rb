class DatacenterPolicy < ApplicationPolicy
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
    [:name, :datacenter_type, :carina_config, :carina_config_cache]
  end

  class Scope < Scope
    def resolve
      return scope.none unless user.present?
      scope.where(id: user.datacenters.select(:id))
    end
  end
end
