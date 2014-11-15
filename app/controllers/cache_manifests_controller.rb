class CacheManifestsController < ApplicationController
  before_filter :set_headers
  before_filter :handle_offline_disabled

  def show
    @passages = @person.passages
  end

  private

  def handle_offline_disabled
    head :not_found unless offline_enabled?
  end

  def set_headers
    headers['Content-Type'] = 'text/cache-manifest'
    headers['Cache-Control'] = 'no-cache, no-store, max-age=0, must-revalidate'
  end
end
