class Person < ActiveRecord::Base
  validates_presence_of :name, :email

  has_many :person_passages
  has_many :passages, -> { order('person_passages.position ASC') }, through: :person_passages, inverse_of: :people
end
