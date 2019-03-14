class AreasController < ApplicationController
  def index
    @area = Area.all
  end

  def search_get
  end

  def search
    @area = Area.new
    uri = URI.parse("http://zipcloud.ibsnet.co.jp/api/search?zipcode=#{params[:zipcode]}")
    response = Net::HTTP.get_response(uri)
    if response
      @result = JSON.parse(response.body)
      @zipcode = @result["results"][0]["zipcode"]
      @prefcode = @result["results"][0]["prefcode"]
      @address1 = @result["results"][0]["address1"]
      @address2 = @result["results"][0]["address2"]
      @address3 = @result["results"][0]["address3"]
      @kana1 = @result["results"][0]["kana1"]
      @kana2 = @result["results"][0]["kana2"]
      @kana3 = @result["results"][0]["kana3"]

      render "new"
    end
  end

  def create
    @area = Area.new(area_params)
    if @area.save
      redirect_to ("/")
    end
  end

  private

  def area_params
    params.require(:area).permit(:zipcode, :prefcode, :address1, :address2, :address3, :kana1, :kana2, :kana3, :introducation)
  end
end
