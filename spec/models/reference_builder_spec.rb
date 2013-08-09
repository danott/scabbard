require 'spec_helper'

def esv_html_fixture
  %Q\<div class="esv"><h2>Isaiah 40:8</h2><div class="esv-text"><div class="block-indent"><p class="line-group" id="p23040008.01-1"><span class="verse-num" id="v23040008-1">8&nbsp;</span>The grass withers, the flower fades,<br><span class="indent"></span>but the word of our God will stand forever.</p></div></div></div>\
end

describe ReferenceBuilder do
  subject { ReferenceBuilder }

  context "#esv_html" do
    let(:reference) { subject.esv_html(esv_html_fixture) }
    it "should build a Reference" do
      reference.should be_kind_of(Reference)
    end

    it "should set title as expected" do
      reference.title.should eql('Isaiah 40:8')
    end

    it "should not persist record" do
      reference.should_not be_persisted
    end
  end
end
