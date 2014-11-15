class FindPassage
  include Service

  attr_reader :query_string

  def initialize(query_string)
    @query_string = query_string
  end

  def call
    FindPassageUsingDatabase.call(query_string) || FindPassageUsingApi.call(query_string)
  end
end
