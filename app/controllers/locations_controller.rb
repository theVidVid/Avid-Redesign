class LocationsController < ApplicationController

  def show
    @designers_from_location = Designer.where(location: params[:location])
    puts @designers_from_location
  end
end
