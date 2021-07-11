class Admin::ItWordsController < ApplicationController

  def index
    @it_words = ItWord.all
  end

end
