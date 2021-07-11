class DangersController < ApplicationController

  def create
    it_word = ItWord.find(params[:it_word_id])
    danger = current_user.dangers.new(it_word_id: it_word.id)
    danger.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    it_word = ItWord.find(params[:it_word_id])
    danger = current_user.dangers.find_by(it_word_id: it_word.id)
    danger.destroy
    redirect_back(fallback_location: root_path)
  end

  def index
  end

end
