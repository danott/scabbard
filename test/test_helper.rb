ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/pride'
require 'minitest/focus'

class ActiveSupport::TestCase
  fixtures :all

  def sign_in(person = :michael)
    session[:person_id] = people(person).id
  end

  def sign_out
    session.delete(:person_id)
  end
end

