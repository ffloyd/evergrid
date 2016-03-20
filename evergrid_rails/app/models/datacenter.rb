class Datacenter < ActiveRecord::Base
  DATACENTER_TYPES = {
    # db key => human readable label
    'carina' => 'app.getcarina.com'
  }.freeze

  belongs_to :user

  mount_uploader :carina_config, CarinaConfigUploader

  validates :name, :user,
            presence: true

  validates :datacenter_type,
            inclusion: {
              in: DATACENTER_TYPES.keys
            }

  validates :carina_config,
            presence: {
              if: -> (dc) { dc.datacenter_type == 'carina' }
            }
end
