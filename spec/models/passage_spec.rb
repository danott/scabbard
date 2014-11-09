require 'spec_helper'

describe Passage do
  it "#html should be html safe" do
    subject.html.should be {:html_safe?}
  end

  context "#heading=" do
    it "should create sha" do
      expect {
        subject.heading = 'Isaiah 40:8'
      }.to change { subject.sha }
    end
  end

  it "#sha= should not be available" do
    expect {
      subject.sha = 'anything'
    }.to raise_error
  end
end
