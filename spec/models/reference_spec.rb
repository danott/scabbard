require 'spec_helper'

describe Reference do
  it "#html should be html safe" do
    subject.html.should be {:html_safe?}
  end
end
