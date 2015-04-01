class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :disable_sign_up, :if => :devise_controller?
  def disable_sign_up
    if "#{params[:controller]}_#{params[:action]}".gsub('devise/', '') == 'registrations_new'
      redirect_to root_path
    end
  end
end
