class PassagesController < ApplicationController
  respond_to :json, :html

  def index
    @passages = Passage.all
    respond_with @passages
  end

  def show
    @passage = Passage.find_by! sha: params.require(:id)
    respond_with @passage
  end

  def query
    @passage = PassageQuery.find(params.require(:query_string))
    respond_with @passage
  end

  rescue_from EsvBiblePassageQuery::PassageNotFound do |exception|
    head :not_found
  end
end
