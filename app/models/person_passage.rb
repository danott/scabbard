class PersonPassage < ActiveRecord::Base
  belongs_to :person
  belongs_to :passage

  validates :passage, uniqueness: { scope: :person }
end
