class AdminController < ApplicationController

  # Handle redirects for logins
  before_action :authorize_user, :except => [:login_page, :login, :logout]

  def index
    
  end

  def login_page
    if session[:logged_in] == true
      redirect_to :action => 'index'
    end
  end

  def login
    name = '60b0x3s'

    if params[:secret_code] == name
      flash[:success] = 'You have successfully logged in!.'
      session[:logged_in] = true
      redirect_to :action => 'index'
    else
      flash[:error] = 'You have entered an incorrect password.'
      redirect_to :action => 'login_page'
    end
  end


  def logout
    flash[:success] = 'You have successfully logged out!.'
    session[:logged_in] = false
    redirect_to root_path
  end


  def authorize_user
    if ! session[:logged_in].present? || session[:logged_in] == false
      flash[:error] = 'You are not logged in.'
      redirect_to login_path
    end
  end
end