class ItWordsController < ApplicationController
  def new
    @it_word = ItWord.new
    @categories = Category.all
  end

  def create
    # エラーメッセージ表示の為、インスタンス変数
    @it_word = ItWord.new(it_word_params)
    if @it_word.save
      redirect_to it_words_path
    else
      @categories = Category.all
      render 'new'
    end
  end

  def edit
    @it_word = ItWord.find(params[:id])
    @categories = Category.all
  end

  def update
    # エラーメッセージ表示の為、インスタンス変数
    @it_word = ItWord.find(params[:id])
    if @it_word.update(it_word_params)
      redirect_to it_words_path
    else
      @categories = Category.all
      render 'edit'
    end
  end

  def destroy
    it_word = ItWord.find(params[:id])
    it_word.destroy
    redirect_back(fallback_location: root_path)
  end

  # カテゴリー無しver
  def quiz
    quiz = Rails.cache.read('quiz') || '[]'
    quiz = JSON.parse(quiz)
    if quiz.blank?
      # ランダムにレコード取得
      random = ItWord.order('RAND()')
      # ●"quiz"に定義●"to_json"にて文字列として保存
      Rails.cache.write('quiz', random.to_json)
    end
    word = Rails.cache.read('quiz')
    # 再び配列へ
    # wordを置き換えてるので下記変数名である必要がある
    word = JSON.parse word
    @random = word.first
    word.delete_if { |w| w['id'] == @random['id'] }
    Rails.cache.write('quiz', word.to_json)
  end

  # カテゴリー有りver
  def category_quiz
    @category = Category.find_by(category: params[:category])
    quiz = Rails.cache.read('quiz') || '[]'
    quiz = JSON.parse(quiz)
    # キャッシュ定義
    if quiz.blank?
      # ランダムにレコード取得
      random = @category.it_words.order('RAND()')
      # ・"quiz"に定義・"to_json"にて文字列として保存
      Rails.cache.write('quiz', random.to_json)
    end
    word = Rails.cache.read('quiz')
    # 再び配列へ
    # wordを置き換えてるので下記変数名である必要がある
    word = JSON.parse word
    @random = word.first
    # 一度出たit_wordは削除する
    word.delete_if { |w| w['id'] == @random['id'] }
    # ・"quiz"に定義・"to_json"にて文字列として保存
    Rails.cache.write('quiz', word.to_json)
  end

  # カテゴリー無しver
  def show
    @it_word = ItWord.find(params[:id])
  end

  # カテゴリー有りver
  def category_show
    @it_word = ItWord.find(params[:id])
    @category = Category.find_by(category: params[:category])
  end

  def finish
    @study_count = current_user.study_counts.where(is_study: true).count
    current_user.study_counts.destroy_all
    # キャッシュをクリアする
    Rails.cache.clear
  end

  def index
    # 降順表示、ページネーション
    @it_words = ItWord.order('id ASC').page(params[:page]).reverse_order
  end

  private

  def it_word_params
    params.require(:it_word).permit(:user_id, :word, :body, :category_id)
  end
end
