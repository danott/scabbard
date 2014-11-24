class Guest < ActiveRecord::Base
  self.table_name = "people"

  has_and_belongs_to_many :passages, foreign_key: :person_id

  after_initialize do
    self.name = "GUEST"
  end
end
