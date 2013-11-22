require 'spec_helper'

describe CachedPassageQuery do
  subject { CachedPassageQuery }

  context "CachedPassageQuery::passage_query" do
    it "should return a CachedPassageQuery" do
      subject.passage_query('Isaiah 40:8').should be_a(CachedPassageQuery)
    end

    it "should cache api results in database" do
      expect {
        2.times { subject.passage_query('Isaiah 40:8') }
      }.to change{CachedPassageQuery.count}.by(1)
    end
  end
end
