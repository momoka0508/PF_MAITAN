class StudyCountsController < ApplicationController
  def create
    study_count = current_user.study_counts.last

    # study_count、空メソッド作成するかしないか
    study_count.update(count: params[:count].to_i)

    @it_word = ItWord.find(params[:id])
    render template: 'it_words/show'

  end

end
