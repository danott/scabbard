require 'spec_helper'

describe ReferenceFinder do
  subject { ReferenceFinder }

  before do
    stub_const('ReferenceFinder::API_KEY', 'TEST')
  end

  context "when valid passage" do
    it "should build a Reference" do
      subject.search('Isaiah 40:8').should be_kind_of(Reference)
    end
  end

  context "when invalid passage" do
    it "should raise ReferenceNotFound" do
      expect {
        subject.search('Gobbledy gook')
      }.to raise_error(ReferenceFinder::ReferenceNotFound)
    end
  end
end
