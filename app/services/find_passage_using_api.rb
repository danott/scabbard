class FindPassageUsingApi
  include Service

  attr_reader :query_string

  def initialize(query_string)
    @query_string = query_string
  end

  def call
    cached_passage_query.passage
  end

  private

  def cached_passage_query
    CachedPassageQuery.find_or_create_by(query_string: query_string, passage_id: passage_from_api.id)
  end

  def passage_from_api
    esv_passage = EsvBiblePassageQuery.find(query_string)
    Passage.find_or_create_by(heading: esv_passage.heading, html: esv_passage.html)
  end
end
