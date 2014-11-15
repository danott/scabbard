class FindPassageUsingDatabase
  include Service

  attr_reader :query_string

  def initialize(query_string)
    @query_string = query_string
  end

  def call
    CachedPassageQuery.find_by(query_string: query_string).try(:passage)
  end
end
