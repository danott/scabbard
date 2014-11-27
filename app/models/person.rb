class Person < ActiveRecord::Base
  has_secure_password

  has_and_belongs_to_many :passages

  validates :email, presence: true, uniqueness: true

  def add_passage(passage)
    passages << passage unless passages.include?(passage)
  end
end
