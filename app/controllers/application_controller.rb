class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

	before_action :authenticate_user!
	before_action :configure_permitted_paramaters, if: :devise_controller?

end
