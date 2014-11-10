module CacheManifestsHelper
  def cache_manifest_javascript_include_tag(*args)
    sources = javascript_include_tag(*args)
    sources.scan(/src=\"(.*?)\"/).join("\n")
  end

  def cache_manifest_stylesheet_link_tag(*args)
    sources = stylesheet_link_tag(*args)
    sources.scan(/href=\"(.*?)\"/).join("\n")
  end
end
