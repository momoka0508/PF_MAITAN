class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :it_word
end
