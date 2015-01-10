class ApplicationController < ActionController::Base
  before_action :set_person

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def sign_in(person)
    reset_session
    session[:person_id] = person.id
  end

  def sign_out
    reset_session
  end

  def set_person
    if session[:person_id]
      @person = Person.find(session[:person_id])
    elsif session[:guest_id]
      @person = Guest.find(session[:guest_id])
    else
      @person = Guest.create.tap do |guest|
        session[:guest_id] = guest.id
      end
    end
  end

  def offline_enabled?
    false
  end
  helper_method :offline_enabled?
end
