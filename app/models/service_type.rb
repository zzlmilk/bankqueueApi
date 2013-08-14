class ServiceType < ActiveRecord::Base
  attr_accessible :is_exist_form, :parent_id, :priority_level, :service_id, :service_name, :service_tag
end
