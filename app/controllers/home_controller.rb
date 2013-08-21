class HomeController < ApplicationController
  http_basic_authenticate_with name: "basic_auth_username", password: "easy_password" #, except: :index

  def index
    @devices = Device.all
  end

  def register_device_with_token
    Device.create(:token => params[:token])
    redirect_to home_index_path
  end

  def send_notification
    logger.info "Device token registrato: " + params[:token].to_s
    APNS.send_notification(params[:token].to_s, 'Hello from Rails app!' )
    redirect_to home_index_path, :notice => "Notification sent to device #{params[:token]}"
  end
end
