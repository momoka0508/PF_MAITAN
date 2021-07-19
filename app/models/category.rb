class Category < ApplicationRecord
  has_many :it_words, dependent: :destroy
end
