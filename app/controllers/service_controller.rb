class ServiceController < ApplicationController

  def get_list
    #获取该银行的所有父业务，get方式请求
    #参数：parentId，string型
    #接口地址：/Service/get_list?parentId=000000-00000000
  	parentId="";
  	if(params[:parentId]==nil)
  		parentId="000000-00000000";
  	
  	else
		parentId=params[:parentId]
  	end
  	serverList=ServiceType.where("parent_id = ?",parentId);
  	render json: serverList
  end

  def get_child_list
    #获取该银行的所有子业务，get方式请求
    #参数：service_id，string型
    #接口地址：/Service/get_child_list?serviceId=dae8beb9-a02c-11e2-b7ab-208984337244
    if (params[:serviceId]==nil)
      render json: "service_id is miss."
    else
  	serverChildList=ServiceType.where("parent_id = ?",params[:serviceId]);
  	render json: serverChildList
  end
  end
end
