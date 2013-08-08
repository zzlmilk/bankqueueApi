class Bank < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :name, :type, :phone, :province, :city, :area, :address
end
