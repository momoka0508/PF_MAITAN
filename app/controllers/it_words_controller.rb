class ItWordsController < ApplicationController

  def new
    @it_word = ItWord.new
  end

  def create
    it_word = ItWord.new(it_word_params)
    it_word.save
    redirect_to it_words_path
  end

  def edit
    @it_word = ItWord.find(params[:id])
  end

  def update
    it_word = ItWord.find(params[:id])
    it_word.update(it_word_params)
    redirect_to it_words_path
  end

  def destroy
    it_word = ItWord.find(params[:id])
    it_word.destroy
    redirect_back(fallback_location: root_path)
  end

  def start
  end

  def quiz
    @random = ItWord.offset(rand(ItWord.count)).first
  end

  def show
    @it_word = ItWord.find(params[:id])
  end

  def finish
    @study_count = current_user.study_counts.where(is_study: true).count
    StudyCount.destroy_all
  end

  def index
    @it_words = ItWord.all
  end

private

def it_word_params
  params.require(:it_word).permit(:user_id, :word, :body)
end

end
