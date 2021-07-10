class Public::ItWordsController < ApplicationController

  def index
    @it_words = ItWord.all
  end

end
