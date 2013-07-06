class ReferenceBuilder
  include Singleton

  def esv_html(html)
    Reference.new(title: esv_extract_title(html), html: html)
  end

  def self.esv_html(html)
    instance.esv_html(html)
  end

  private

  def esv_extract_title(html)
    html.match(%r{<h2>(?<title>.*)</h2>})[:title]
  end
end
