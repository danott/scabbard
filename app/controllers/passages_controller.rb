class PassagesController < ApplicationController
  before_action :set_passage, only: [:show, :destroy]

  def index
    @passages = @person.passages
  end

  def show
  end

  def new
  end

  def create
    @passage = FindPassage.call(params.require(:query_string))
    @person.passages << @passage unless @person.passages.include? @passage
    redirect_to @passage
  end

  def destroy
    @person.passages.delete(@passage)
    redirect_to :passages
  end

  rescue_from EsvBiblePassageQuery::PassageNotFound do |exception|
    redirect_to new_passage_path, flash: { error: "No passage found" }
  end

  private

  def set_passage
    @passage = Passage.find_by! sha: params.require(:id)
  end
end
