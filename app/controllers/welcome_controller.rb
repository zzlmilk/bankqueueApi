class WelcomeController < ApplicationController
  def index
  	# 这是一个测试的contrller
  	# userName = params[:name]	
  	# user = User.find_by_name(userName)
  	# render  json:user

  	area = ComArea.all
  	area = ComArea.find_by_cou_id("010101")

  	render json:area

  end


end
