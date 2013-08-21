class ServiceType < ActiveRecord::Base
  attr_accessible :is_exist_form, :parent_id, :priority_level, :service_id, :service_name, :service_tag, :number_info_service_id, :number_info
  belongs_to :number_info,
  primary_key: "service_id"


end
