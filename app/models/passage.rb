class Passage < ActiveRecord::Base
  validates :heading, presence: true
  validates :html,    presence: true
  validates :sha,     presence: true, uniqueness: true

  def html
    read_attribute(:html).to_s.html_safe
  end

  def heading=(string)
    write_heading_and_sha_attributes(string)
  end

  def sha=
    raise StandardError.new("Don't set Passage#sha manually")
  end

  def to_param
    sha
  end

  private

  def write_heading_and_sha_attributes(heading)
    write_attribute(:heading, heading)
    write_attribute(:sha, Digest::SHA1.hexdigest(heading))
  end
end
