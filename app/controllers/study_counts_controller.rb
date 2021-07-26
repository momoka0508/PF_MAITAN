class StudyCountsController < ApplicationController
  def create
    study_count = current_user.study_counts.new
    study_count.is_study = true
    study_count.save

    if params[:category].nil?
      @it_word = ItWord.find(params[:id])
      render template: "it_words/show"
    else
      @it_word = ItWord.find(params[:id])
      @category = Category.find_by(category: params[:category])
      render template: "it_words/category_show"
    end
  end

end
