class Reference < ActiveRecord::Base
  validates_presence_of :title, :html

  def html
    read_attribute(:html).to_s.html_safe
  end
end
