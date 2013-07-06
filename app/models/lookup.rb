class Lookup < ActiveRecord::Base
  validates_presence_of :passage
  validates_uniqueness_of :passage

  belongs_to :reference

  def self.passage_query(passage)
    passage_query_database(passage) || passage_query_api(passage)
  end

  private

  def self.passage_query_database(passage)
    find_by(passage: passage)
  end

  def self.passage_query_api(passage)
    reference = ReferenceBuilder.esv_html(ESV.passage_query(passage))

    unless reference.save
      reference = Reference.find_by(sha: reference.sha)
    end

    create(passage: passage, reference_id: reference.id)
  end
end
