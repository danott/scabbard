class CachedPassageQuery < ActiveRecord::Base
  validates_presence_of :query_string
  validates_uniqueness_of :query_string

  belongs_to :passage

  def self.passage_query(query_string)
    passage_query_database(query_string) || passage_query_api(query_string)
  end

  private

  def self.passage_query_database(query_string)
    find_by(query_string: query_string)
  end

  def self.passage_query_api(query_string)
    esv_bible_passage_query = EsvBiblePassageQuery.new(query_string)
    passage = Passage.new(title: esv_bible_passage_query.title, html: esv_bible_passage_query.html)

    unless passage.save
      passage = Passage.find_by(sha: passage.sha)
    end

    create(query_string: query_string, passage_id: passage.id)
  end
end
