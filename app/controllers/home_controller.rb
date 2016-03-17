class HomeController < ApplicationController
  def show
    authorize :home
  end
end
