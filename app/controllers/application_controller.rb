class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_current_user

  protected
  	def set_current_user
  		@current_user = Movieuser.find(session[:user_id]) if session[:user_id]
  	end
end
