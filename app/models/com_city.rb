class ComCity < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :cou_id, :cou_name, :pro_id, :pinyin 
   set_table_name "com_city"
end
