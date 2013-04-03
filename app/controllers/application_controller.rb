class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_locale

  helper_method :current_user

  rescue_from CanCan::AccessDenied do |exception|
    Rails.logger.debug "Access denied on #{exception.action} #{exception.subject.inspect}"
    redirect_to root_url, :alert => exception.message
  end
    
  #internatioanlization of the app
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale    
  end
  
  def default_url_options(options={}) 
    logger.debug "default_url_options is passed options: #{options.inspect}\n"
    { :locale => I18n.locale }
  end
  
  #authentification
  private

  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end
end
