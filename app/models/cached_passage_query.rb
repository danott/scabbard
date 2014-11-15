class CachedPassageQuery < ActiveRecord::Base
  validates :query_string,
    presence:   true,
    uniqueness: true

  belongs_to :passage
end
