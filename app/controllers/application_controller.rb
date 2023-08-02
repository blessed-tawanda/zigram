class ApplicationController < ActionController::Base

  def set_current_user
    if session[:user_id]
      Current.user = User.find_by(id: session[:user_id])
    end
  end

  def require_user_logged_in!
    redirect_to signin_path, alert: "Please log in to platform first." if Current.user.nil?
  end
end
