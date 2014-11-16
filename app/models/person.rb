class Person < ActiveRecord::Base
  has_many :person_passages
  has_many :passages, through: :person_passages

  validates_presence_of :name, :email
end
