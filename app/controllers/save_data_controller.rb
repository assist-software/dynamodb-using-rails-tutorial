class SaveDataController < ApplicationController
  def index
  end

  def save

    name  = params['name']
    mob   = params['mob']
    email = params['email']
    mess  = params['mess']

    aws_params = Hash.new
    aws_params[:mob] = mob
    aws_params[:custom_fields]    = {

        'name'    => name,
        'email'   => email,
        'message' => mess,
    }

    if Aws.save_records_to_db(aws_params)
      flash[:notice] = "Message Sent!"
    else
      flash[:error] = "Error While Save to DynamoDB"
    end
    redirect_to root_path
  end
end
