class ApplicationController < ActionController::Base
  before_filter :set_person

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def set_person
    @person = Person.find session[:person_id]
  end

  def offline_enabled?
    false
  end
  helper_method :offline_enabled?
end
