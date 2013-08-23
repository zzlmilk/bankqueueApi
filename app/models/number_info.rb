class NumberInfo < ActiveRecord::Base
  attr_accessible :bank_id, :bank_name, :bank_type_name, :form_id, :is_exist_form, :now_number, :number_date, :number_id, :number_info_service_id, :number_order, :number_status, :service_id, :service_name, :service_parent_id, :service_tag, :waited_count
  has_one :service_type,
  primary_key: "service_id",
  foreign_key: "service_id"

#   validates :bank_id, format: { with: /\w/,
#     message: "bank_id can not be blank" }, presence: true
#   validates :service_id, format: { with: /\w/,
#     message: "service_id can not be blank" }, presence: true


  def self.instanceNumber(sev_id,bank_id)
  		num = NumberInfo.new	

  		s=ServiceType.find_by_service_id(sev_id)
		bt=BankType.find_by_id(bank_id)

		#如果数据库中没有 该ServiceType 或者 BankType 返回空对象
		if s==nil || bt ==nil 
			num=nil
			return num
		end

		num.number_id=SecureRandom.uuid;
		num.number_status=1
		num.number_date=Time.new.strftime("%Y-%m-%d %H:%M:%S")
		# num.now_number=1000
		num.waited_count=5
		num.service_id=sev_id
		num.bank_id=bank_id	

		num.service_name=s.service_name
		num.service_parent_id=s.parent_id
		num.service_tag=s.service_tag
		num.is_exist_form=s.is_exist_form
		num.service_tag=s.service_tag

		if s.service_tag=='A'
			num.number_order=1000
		elsif s.service_tag=='B'
			num.number_order=2000
		end
		
		num.bank_type_name=bt.bank_type
		num.bank_id=bt.id

		b = bt.bank 
		num.bank_name=b.name

		num.form_id=SecureRandom.uuid

		# #找出当前最大  未叫的票  取出该number的order 加 1 递增
		n = NumberInfo.find_by_sql("select * from number_infos where service_tag='#{s.service_tag}' AND bank_id=#{bank_id} AND number_status=1  ORDER BY number_infos.id desc LIMIT 1")[0]

		if n==nil 
			
		elsif n!=nil
			num.number_order = n.number_order+1
		end

		return num

  end

end
