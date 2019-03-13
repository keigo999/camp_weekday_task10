class AreasController < ApplicationController
  def index
  end

  def new
    @area = Area.new(area_params)
  end

  private

  def area_params
    params.require(:area).permit(:zipcode)
  end
end
