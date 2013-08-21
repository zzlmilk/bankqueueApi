class Bank < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :name, :type, :phone, :province, :city, :area, :address
  set_inheritance_column :bank_type

  belongs_to :bank_type,
  primary_key: "id"

end
