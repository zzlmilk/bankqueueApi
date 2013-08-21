class NumberController < ApplicationController
	#生成票号
	#传bank_id  service_id
	#接口类型   api/createNumber?bank_id=xxx&service_id=xxx
	#请求方式：get
	def createNumber
		
		num= NumberInfo.instanceNumber(params[:service_id],params[:bank_id])

		render json:num

	    num.save

	end

	#获取票号 单个或所有
	#传ids
	#接口类型：api/refreshNumbers?ids=xxxx  
	#请求方式：get
	def refreshNumbers

			getArr = Array.new #创建数组
			idsArr = params[:ids].split(",")

			idsArr.each do |id|
				
				num =NumberInfo.find_by_number_id(id)
				getArr.push(num) #添加对象

			end
		
			render json: getArr

	end


end
