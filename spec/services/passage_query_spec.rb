require 'spec_helper'

describe PassageQuery do
  let(:query_string) { 'Isaiah 40:8' }

  context "PassageQuery::find" do
    it "should return a Passage" do
      PassageQuery.find(query_string).should be_a(Passage)
    end

    it "should cache api results in database" do
      expect {
        2.times { PassageQuery.find(query_string) }
      }.to change{CachedPassageQuery.count}.by(1)
    end

    it "should only create the passage once" do
      expect {
        2.times { PassageQuery.find(query_string) }
      }.to change{Passage.count}.by(1)
    end
  end
end
