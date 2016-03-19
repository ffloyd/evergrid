class Block::PanelCell < ApplicationCell
  option :header
  option :content

  def show
    render
  end
end
