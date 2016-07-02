module SharedPersonBehavior
  extend ActiveSupport::Concern

  included do
    self.table_name = "people"
    has_and_belongs_to_many :passages, foreign_key: :person_id
  end

  def add_passage(passage)
    self.passages << passage
  end
end
