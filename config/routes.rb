APNS::Application.routes.draw do
  get "home/index"
  root 'home#index'
  get '/register_device/:token', to: 'home#register_device_with_token'
  get '/send_notification/:token', to: 'home#send_notification'
end
