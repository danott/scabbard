require 'net/http'

class ReferenceFinder
  include Singleton

  class ReferenceNotFound < StandardError; end;

  API_ENDPOINT = 'http://www.esvapi.org/v2/rest/passageQuery'
  API_KEY = 'IP'
  API_PARAMS = {
    :'include-passage-references' => true,
    :'include-verse-numbers' => true,
    :'include-footnotes' => false,
    :'include-footnote-links' => false,
    :'include-headings' => false,
    :'include-subheadings' => false,
    :'include-surrounding-chapters' => false,
    :'include-word-ids' => false,
    :'link-url' => 'http://www.gnpcb.org/esv/search/',
    :'include-audio-link' => false,
    :'audio-format' => 'mp3',
    :'audio-version' => 'hw',
    :'include-short-copyright' => false,
    :'include-copyright' => false,
    :'output-format' => 'html',
    :'key' => API_KEY
  }

  def search(passage)
    build_reference(request_for_esv_formatted_html(passage))
  end

  def self.search(passage)
    instance.search(passage)
  end

  private

  def request_for_esv_formatted_html(passage)
    params = API_PARAMS.merge(:passage => passage).to_param
    Net::HTTP.get(URI.parse([API_ENDPOINT, params].join('?')))
  end

  def build_reference(esv_formatted_html)
    raise ReferenceNotFound if esv_formatted_html.match(/^ERROR:/)
    Reference.new(title: extract_title(esv_formatted_html), html: esv_formatted_html)
  end

  def extract_title(esv_formatted_html)
    esv_formatted_html.match(%r{<h2>(?<title>.*)</h2>})[:title]
  end
end
