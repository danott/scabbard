class ReferencesController < ApplicationController
  respond_to :json, :html

  def index
    @references = Reference.all
    respond_with @references
  end

  def show
    @reference = Reference.find_by! sha: params.require(:id)
    respond_with @reference
  end

  def lookup
    @reference = Lookup.passage_query(params.require(:passage)).reference
    respond_with @reference
  end

  rescue_from ESV::PassageNotFound do |exception|
    head :not_found
  end
end
