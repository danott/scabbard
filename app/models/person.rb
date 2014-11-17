class Person < ActiveRecord::Base
  has_secure_password

  has_and_belongs_to_many :passages

  validates :email, presence: true, uniqueness: true
end
