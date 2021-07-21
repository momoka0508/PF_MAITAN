class ItWordsController < ApplicationController

  def new
    @it_word = ItWord.new
    @categories = Category.all
  end

  def create
    it_word = ItWord.new(it_word_params)
    if it_word.save
      redirect_to it_words_path
    else
      @categories = Category.all
      render "new"
    end
  end

  def edit
    @it_word = ItWord.find(params[:id])
    @categories = Category.all
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

  # カテゴリー無しver
  def quiz
    # キャッシュ定義
    if Rails.cache.read("quiz").nil?
      # ランダムにレコード取得
      random = ItWord.order("RANDOM()")
      # ・"quiz"に定義・"to_json"にて文字列として保存
      Rails.cache.write("quiz", random.to_json)
      word = Rails.cache.read("quiz")
      # 配列の先頭を変数に定義する
      Rails.cache.write("count", 0)
      hoge = Rails.cache.read("count")
    else
      word = Rails.cache.read("quiz")
      hoge = Rails.cache.read("count")
    end
    # 再び配列へ
    word = JSON.parse word
    @random = word[hoge]
    puts hoge
    Rails.cache.write("count", hoge+1)
  end

  # カテゴリー有りver
  def category_quiz
    # キャッシュ定義
    if Rails.cache.read("quiz").nil?
      # ランダムにレコード取得
      @category = Category.find_by(category: params[:category])
      random = @category.it_words.order("RANDOM()")
      # ・"quiz"に定義・"to_json"にて文字列として保存
      Rails.cache.write("quiz", random.to_json)
      word = Rails.cache.read("quiz")
      # 配列の先頭を変数に定義する
      Rails.cache.write("count", 0)
      hoge = Rails.cache.read("count")
    else
      word = Rails.cache.read("quiz")
      hoge = Rails.cache.read("count")
    end
    # 再び配列へ
    word = JSON.parse word
    @random = word[hoge]
    puts hoge
    Rails.cache.write("count", hoge+1)
  end

  # カテゴリー無しver
  def show
    @it_word = ItWord.find(params[:id])
  end

  # カテゴリー有りver
  def category_show
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
  params.require(:it_word).permit(:user_id, :word, :body, :category_id)
end

end
