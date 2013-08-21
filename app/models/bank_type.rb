class BankType < ActiveRecord::Base
   attr_accessible :bank_type 
   set_table_name "bank_type"
   has_one :bank,
   primary_key: "id",
   foreign_key: "id"

end
