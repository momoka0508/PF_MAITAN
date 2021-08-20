class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  # 引数で渡されたユーザidがBookmarksテーブル内に存在（exists?）するかどうかを調べる
  def bookmarked_by?(user)
    bookmarks.where(user_id: user.id).exists?
  end
end
