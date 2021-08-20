class HomesController < ApplicationController
  def choice
    @it_words = ItWord.all
  end
end
