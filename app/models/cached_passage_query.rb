class CachedPassageQuery < ActiveRecord::Base
  validates_presence_of :query_string
  validates_uniqueness_of :query_string

  belongs_to :passage
end
