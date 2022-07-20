class AirQualityController < ApplicationController
  def index
    response = HTTP.get("http://api.airvisual.com/v2/city?city=#{params[:city]}&state=#{params[:state]}&country=#{params[:country]}&key=#{Rails.application.credentials[:api_key]}")

    render json: response.parse(:json)
  end
end
