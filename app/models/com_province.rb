class ComProvince < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :pro_id, :pro_name, :grade, :pinyin 
   set_table_name "com_province"
end
