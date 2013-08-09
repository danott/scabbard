require 'spec_helper'

describe Lookup do
  subject { Lookup }

  context "Lookup::passage_query" do
    it "should return a Lookup" do
      subject.passage_query('Isaiah 40:8').should be_a(Lookup)
    end

    it "should cache api results in database" do
      expect {
        2.times { subject.passage_query('Isaiah 40:8') }
      }.to change{Lookup.count}.by(1)
    end
  end
end
