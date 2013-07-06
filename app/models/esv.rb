require 'net/http'

class ESV
  class PassageNotFound < StandardError; end;

  include Singleton

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

  def passage_query(passage)
    request_for_esv_formatted_html(passage)
  end

  def self.passage_query(passage)
    instance.passage_query(passage)
  end

  private

  def request_for_esv_formatted_html(passage)
    params = API_PARAMS.merge(:passage => passage).to_param
    esv_formatted_html = Net::HTTP.get(URI.parse([API_ENDPOINT, params].join('?')))
    raise PassageNotFound if esv_formatted_html.match(/^ERROR:/)
    return esv_formatted_html
  end
end
