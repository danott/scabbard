class Person < ActiveRecord::Base
  include SharedPersonBehavior

  has_secure_password

  validates :email, presence: true, uniqueness: true
end
