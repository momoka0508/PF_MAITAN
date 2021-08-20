class SearchController < ApplicationController
  def search
    @it_words = ItWord.search(params[:search])
  end
end
