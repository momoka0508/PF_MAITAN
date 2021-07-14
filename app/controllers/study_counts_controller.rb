class StudyCountsController < ApplicationController
  def create
    study_count = current_user.study_counts.new
    study_count.is_study = true
    study_count.save

    @it_word = ItWord.find(params[:id])
    render template: 'it_words/show'
  end

end
