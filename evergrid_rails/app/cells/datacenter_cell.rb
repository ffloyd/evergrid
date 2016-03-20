class DatacenterCell < ApplicationCell
  property :name

  option :in_index?

  def show
    cell('block/panel', nil, header: name, content: part(:panel_body))
  end

  private

  def datacenter_type
    Datacenter::DATACENTER_TYPES[model.datacenter_type]
  end
end
