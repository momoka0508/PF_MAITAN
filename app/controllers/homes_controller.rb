class HomesController < ApplicationController
  def top; end

  def choice
    @it_words = ItWord.all
  end
end
