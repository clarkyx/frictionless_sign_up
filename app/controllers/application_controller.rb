class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  Clearbit.key = ENV['clearbit_api_key']
end
