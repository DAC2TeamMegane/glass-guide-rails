class PlaceInformation < ActiveRecord::Base
  attr_accessible :beacon_data1, :beacon_data2, :description, :name, :url, :icon_url
end
