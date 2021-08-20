class StudyCountsController < ApplicationController
  def create
    study_count = current_user.study_counts.new
    study_count.is_study = true
    study_count.save

    @it_word = ItWord.find(params[:id])
    if params[:category].nil?
      render template: 'it_words/show'
    else
      @category = Category.find_by(category: params[:category])
      render template: 'it_words/category_show'
    end
  end
end
