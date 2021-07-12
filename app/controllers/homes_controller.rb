class HomesController < ApplicationController

  def top
  end

  def choice
    # 新着IT用語５件表示
    @it_words = ItWord.pluck(:word).last(5)
  end

end
