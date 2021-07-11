class ItWord < ApplicationRecord
  belongs_to :user

  has_many :bookmarks, dependent: :destroy
  has_many :dangers, dependent: :destroy

  # 引数で渡されたユーザidがBookmarksテーブル内に存在（exists?）するかどうかを調べる
  def bookmarked_by?(user)
    bookmarks.where(user_id: user.id).exists?
  end

  # 引数で渡されたユーザidがDangersテーブル内に存在（exists?）するかどうかを調べる
  def dangered_by?(user)
    dangers.where(user_id: user.id).exists?
  end

  # searchの定義
  def self.search(search)
    ItWord.where(["word LIKE ?", "%#{search}%"])
  end

end
