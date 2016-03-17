class Dataset < ActiveRecord::Base
  belongs_to :user

  validates :name, :description, :user,
            presence: true
end
