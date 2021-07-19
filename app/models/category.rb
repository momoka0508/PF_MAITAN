class Category < ApplicationRecord
  belongs_to :it_word, optional: true
end
