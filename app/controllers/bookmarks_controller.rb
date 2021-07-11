class BookmarksController < ApplicationController

  def create
    it_word = ItWord.find(params[:it_word_id])
    bookmark = current_user.bookmarks.new(it_word_id: it_word.id)
    bookmark.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    it_word = ItWord.find(params[:it_word_id])
    bookmark = current_user.bookmarks.find_by(it_word_id: it_word.id)
    bookmark.destroy
    redirect_back(fallback_location: root_path)
  end

  def index
  end

end
