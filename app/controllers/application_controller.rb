class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :ensure_user
  helper_method :current_user

  private
  def current_user
     @current_user ||= if user_id = session[:user_id]
      User.find_by_id(user_id)
    elsif token = params[:token]
      User.find_by_token(token)
    end
  end

  def ensure_user
    redirect_to root_url unless current_user
  end
end
