class ApiController < ApplicationController
  def get_url
    data1 = params[:data1]
    data2 = params[:data2]
    info = PlaceInformation.where(beacon_data1: data1).where(beacon_data2: data2).first

    if info
      render json: info
    else
      render json: {msg: "error"}
    end
  end

end
