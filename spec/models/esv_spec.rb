require 'spec_helper'

describe ESV do
  subject { ESV }

  before do
    stub_const('ESV::API_KEY', 'TEST')
  end

  context "when valid passage" do
    it "should return passage as html" do
      subject.passage_query('Isaiah 40:8').should
    end
  end

  context "when invalid passage" do
    it "should raise PassageNotFound" do
      expect {
        subject.passage_query('Gobbledy gook')
      }.to raise_error(ESV::PassageNotFound)
    end
  end
end
