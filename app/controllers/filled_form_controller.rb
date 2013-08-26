class FilledFormController < ApplicationController
  def get_filled_form
  	#atext=File.read("/home/liu/bankqueueApi/formInfo.html");
    atext=File.read("formInfo.html");
  	render :json => atext
  end
  def save_filled_data
  	nowTime=Time.now
  	filledData=FilledFormInfo.new();
  	filledData.form_id=params[:formId]
  	filledData.filled_content=params[:formContont]
  	filledData.filled_date=nowTime.strftime("%Y-%m-%d %H:%M:%S");
  	filledData.save;
  	render :json => filledData
  end
end
