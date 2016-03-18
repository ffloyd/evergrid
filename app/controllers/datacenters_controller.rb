class DatacentersController < ApplicationController
  before_action :load_datacenter,  only: [:show, :edit, :update, :destroy]
  before_action :build_datacenter, only: [:new, :create]

  respond_to :html

  def index
    @datacenters = policy_scope(Datacenter)
    authorize @datacenters
    respond_with(@datacenters)
  end

  def show
    authorize @datacenter
    respond_with(@datacenter)
  end

  def new
    respond_with(@datacenter)
  end

  def edit
  end

  def create
    @datacenter.update(permitted_attributes(@datacenter))
    respond_with(@datacenter)
  end

  def update
    @datacenter.update(permitted_attributes(@datacenter))
    respond_with(@datacenter)
  end

  def destroy
    @datacenter.destroy
    respond_with(@datacenter)
  end

  private

  def load_datacenter
    @datacenter = policy_scope(Datacenter).find(params[:id])
    authorize @datacenter
  end

  def build_datacenter
    @datacenter = Datacenter.new(user: current_user)
    authorize @datacenter
  end
end
