class LandingsController < ApplicationController
  def index
    if @person.passages.any?
      redirect_to passages_path
    end
  end
end
