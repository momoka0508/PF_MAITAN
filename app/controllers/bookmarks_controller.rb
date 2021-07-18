class BookmarksController < ApplicationController

  def create
    it_word = ItWord.find(params[:it_word_id])
    bookmark = current_user.bookmarks.new(it_word_id: it_word.id)
    bookmark.save
  end

  def destroy
    it_word = ItWord.find(params[:it_word_id])
    bookmark = current_user.bookmarks.find_by(it_word_id: it_word.id)
    bookmark.destroy
  end

  def index
    @bookmarks = Bookmark.where(user_id: current_user.id)
  end

end
