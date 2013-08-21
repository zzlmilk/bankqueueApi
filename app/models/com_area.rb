class ComArea < ActiveRecord::Base
  # attr_accessible :title, :body
   attr_accessible :cou_id, :cou_name, :cit_id, :pro_id, :pinyin 
   set_table_name "com_area"
   
end
