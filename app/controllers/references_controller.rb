class ReferencesController < ApplicationController
  respond_to :json, :html

  def index
    @references = @person.references
    respond_with @references
  end

  def show
    @reference = Reference.find(params[:id])
    respond_with @reference
  end
end
