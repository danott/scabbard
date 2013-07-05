class Person < ActiveRecord::Base
  validates_presence_of :name, :email

  has_many :person_references
  has_many :references, -> { order('person_references.position ASC') }, through: :person_references, inverse_of: :people
end
