class DatasetCell < ApplicationCell
  property :name
  property :description

  option :in_index?

  def show
    cell('block/panel', nil, header: name, content: part(:panel_body))
  end
end
