class ApplicationController < ActionController::Base
    # before_action :ensure_login

    # protected
    # def ensure_login

    #     redirect_to singin_users_path unless session[:checkuser_id]
    #     #if session have nothing then it go on login page
    
    # end


  protect_from_forgery with: :exception   
  private   
  def current_user   
    User.where(id: session[:checkuser_id] ).first   
  end   
  helper_method :current_user   
end
