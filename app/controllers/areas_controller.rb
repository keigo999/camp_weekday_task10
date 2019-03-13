class AreasController < ApplicationController
  def index
  end

  def new
    @area = Area.new
  end

  def search
    @area = Area.new
    uri = URI.parse("http://zipcloud.ibsnet.co.jp/api/search?zipcode=#{@area}")
    @area2 = Net::HTTP.get_response(uri)
    redirect_to 
  end

  private

  def area_params
    params.require(:area).permit(:zipcode)
  end
end
