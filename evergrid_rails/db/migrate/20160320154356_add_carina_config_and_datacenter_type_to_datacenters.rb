class AddCarinaConfigAndDatacenterTypeToDatacenters < ActiveRecord::Migration
  def change
    add_column :datacenters, :carina_config, :string
    add_column :datacenters, :datacenter_type, :string
  end
end
