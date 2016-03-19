class DatasetsController < ApplicationController
  before_action :load_dataset,  only: [:show, :edit, :update, :destroy]
  before_action :build_dataset, only: [:new, :create]

  respond_to :html

  def index
    @datasets = policy_scope(Dataset)
    authorize @datasets
    respond_with(@datasets)
  end

  def show
    authorize @dataset
    respond_with(@dataset)
  end

  def new
    respond_with(@dataset)
  end

  def edit
  end

  def create
    @dataset.update(permitted_attributes(@dataset))
    respond_with(@dataset)
  end

  def update
    @dataset.update(permitted_attributes(@dataset))
    respond_with(@dataset)
  end

  def destroy
    @dataset.destroy
    respond_with(@dataset)
  end

  private

  def load_dataset
    @dataset = policy_scope(Dataset).find(params[:id])
    authorize @dataset
  end

  def build_dataset
    @dataset = Dataset.new(user: current_user)
    authorize @dataset
  end
end
