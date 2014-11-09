require 'spec_helper'

def esv_html_fixture
  %Q\<div class="esv"><h2>Isaiah 40:8</h2><div class="esv-text"><div class="block-indent"><p class="line-group" id="p23040008.01-1"><span class="verse-num" id="v23040008-1">8&nbsp;</span>The grass withers, the flower fades,<br /><span class="indent"></span>but the word of our God will stand forever.</p></div></div></div>\
end

describe EsvBiblePassageQuery do
  let(:subject) { EsvBiblePassageQuery.new(passage, api_key: 'TEST') }

  context "when valid passage" do
    let(:passage) { 'Isa 40:8' }

    it "should return passage as html" do
      subject.html.gsub("\n", "").should == esv_html_fixture
    end

    it "should correctly parse the heading" do
      subject.heading.should == "Isaiah 40:8"
    end
  end

  context "when invalid passage" do
    let(:passage) { 'Gobbledy gook' }

    it "should raise PassageNotFound" do
      expect {
        subject.html
      }.to raise_error(EsvBiblePassageQuery::PassageNotFound)
    end
  end
end
