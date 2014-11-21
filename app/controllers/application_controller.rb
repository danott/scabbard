class ApplicationController < ActionController::Base
  before_filter :set_person

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def sign_in(person)
    session[:person_id] = person.id
  end

  def sign_out
    @person = nil
    reset_session
  end

  def set_person
    # TODO - NullPerson
    @person = Person.find_by(id: session[:person_id])
  end

  def offline_enabled?
    false
  end
  helper_method :offline_enabled?
end
