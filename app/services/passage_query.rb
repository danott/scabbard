class PassageQuery
  attr_accessor :query_string

  def self.find(query_string)
    new(query_string).passage
  end

  def initialize(query_string)
    @query_string = query_string
  end

  def passage
    if in_cache?
      cached_passage_query.passage
    else
      find_passage_and_create_cached_passage_query
      cached_passage_query.passage
    end
  end

  private

  def in_cache?
    cached_passage_query.present?
  end

  def cached_passage_query
    CachedPassageQuery.find_by(query_string: query_string)
  end

  def find_passage_and_create_cached_passage_query
    CachedPassageQuery.find_or_create_by(query_string: query_string, passage_id: passage_from_api.id)
  end

  def passage_from_api
    @passage_from_api ||= Passage.find_or_create_by(heading: esv_passage.heading, html: esv_passage.html)
  end

  def esv_passage
    @esv_passage ||= EsvBiblePassageQuery.find(query_string)
  end
end
