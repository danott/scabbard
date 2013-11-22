require 'net/http'

class EsvBiblePassageQuery
  class PassageNotFound < StandardError; end;

  attr_accessor :query_string, :api_key, :api_endpoint

  def self.find(query_string, *args)
    new(query_string, *args)
  end

  def initialize(query_string, args = {})
    @query_string = query_string
    @api_key = args.fetch(:api_key, 'IP')
    @api_endpoint = args.fetch(:api_endpoint, 'http://www.esvapi.org/v2/rest/passageQuery')
  end

  def title
    html.match(%r{<h2>(?<title>.*)</h2>})[:title]
  end

  def html
    @html ||= api_response_body.tap do |response_body|
      raise PassageNotFound if response_body.match(/^ERROR:/)
    end
  end

  private

  def api_params
    { :'include-passage-references' => true,
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
      :'key' => api_key,
      :'passage' => query_string }
  end

  def api_request_url
    URI.parse([api_endpoint, api_params.to_param].join('?'))
  end

  def api_response_body
    Net::HTTP.get(api_request_url)
  end
end
