class Lookup < ActiveRecord::Base
  validates_presence_of :passage
  validates_uniqueness_of :passage

  belongs_to :passage

  def self.passage_query(passage)
    passage_query_database(passage) || passage_query_api(passage)
  end

  private

  def self.passage_query_database(passage)
    find_by(passage: passage)
  end

  def self.passage_query_api(passage)
    esv_bible_passage_query = EsvBiblePassageQuery.new(passage)
    passage = Passage.new(title: esv_bible_passage_query.title, html: esv_bible_passage_query.html)

    unless passage.save
      passage = Passage.find_by(sha: passage.sha)
    end

    create(passage: passage, passage_id: passage.id)
  end
end
