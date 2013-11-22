require 'spec_helper'

describe Passage do
  it "#html should be html safe" do
    subject.html.should be {:html_safe?}
  end

  context "#title=" do
    it "should create sha" do
      expect {
        subject.title = 'Isaiah 40:8'
      }.to change { subject.sha }
    end

    it "should return set value" do
      subject.send(:title=, 'Isaiah 40:8').should eql('Isaiah 40:8')
    end
  end

  it "#sha= should not be available" do
    expect {
      subject.sha = 'anything'
    }.to raise_error
  end
end
