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
    CachedPassageQuery.find_or_initialize_by(query_string: query_string).tap do |cached_passage_query|
      if cached_passage_query.new_record?
        cached_passage_query.passage = passage_from_api
        cached_passage_query.save
      end
    end
  end

  def passage_from_api
    Passage.find_or_initialize_by(heading: esv_passage.heading) do |passage|
      if passage.new_record?
        passage.html = esv_passage.html
        passage.save
      end
    end
  end

  def esv_passage
    @esv_passage ||= EsvBiblePassageQuery.find(query_string)
  end
end
