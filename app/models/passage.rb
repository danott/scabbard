class Passage < ActiveRecord::Base
  validates_presence_of :title, :html, :sha
  validates_uniqueness_of :sha

  def html
    read_attribute(:html).to_s.html_safe
  end

  def title=(string)
    write_title_and_sha_attributes(string)
    title
  end

  def sha=
    raise StandardError
  end

  def to_param
    sha
  end

  private

  def write_title_and_sha_attributes(title)
    write_attribute(:title, title)
    write_attribute(:sha, Digest::SHA1.hexdigest(title))
  end
end
