class NumberController < ApplicationController
	#生成票号
	#传bank_id  service_id
	#接口类型   api/createNumber?bank_id=xxx&service_id=xxx
	#请求方式：get
	def createNumber

		ser_id=params[:service_id]

		ba_id=params[:bank_id]

		#验证service_id and bank_id 不能为空
	  	if ser_id=="" || ser_id==nil || ba_id=="" || ba_id==nil
	  		
	  		error =ErrorInfo.first
	  		render text: error.error_content

	  	elsif 
	  		num= NumberInfo.instanceNumber(ser_id,ba_id)
	  		if num != nil #number 对象不为空保存
	  			num.save	  			
	  		end	

	  		render json:num

	  	else
	  		#异常
	  	end

	end

	#获取票号 单个或所有
	#传ids
	#接口类型：api/refreshNumbers?ids=xxxx  
	#请求方式：get
	def refreshNumbers
			#验证 ids 参数不能为空
			if params[:ids]=="" || params[:ids]==nil
				error =ErrorInfo.find(2)
	  			render text: error.error_content

	  		elsif 
	  			getArr = Array.new #创建数组
				idsArr = params[:ids].split(",")

				idsArr.each do |id|
				
				num =NumberInfo.find_by_number_id(id)
				getArr.push(num) #添加对象

			end
		
				render json: getArr
	  				
			end		

	end


end
