class Reference < ActiveRecord::Base
  validates_presence_of :title, :html

  has_many :person_references
  has_many :people, through: :person_references, inverse_of: :references

  def html
    read_attribute(:html).to_s.html_safe
  end
end
