class BankController < ApplicationController
	#获取银行类型列表
	def bank_type
		bankType = BankType.all
		render json: bankType
	end

	def bank_info
		id  = params[:id]
		lat = params[:lat]
		lon = params[:lon]

		


	end
end
