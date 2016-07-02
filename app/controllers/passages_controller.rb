class PassagesController < ApplicationController
  def index
    @passages = @person.passages
  end

  def show
    @passage = Passage.find_by!(sha: params.require(:id))
  end

  def new
  end

  def create
    @passage = FindPassage.call(params[:query_string])
    @person.passages.append(@passage)
    redirect_to @passage
  end

  def destroy
    @passage = Passage.find_by!(sha: params.require(:id))
    @person.passages.delete(@passage)
    redirect_to :passages
  end

  rescue_from EsvBiblePassageQuery::PassageNotFound do |exception|
    redirect_to new_passage_path, flash: { error: "No passage found" }
  end
end
