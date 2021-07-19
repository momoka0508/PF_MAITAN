class Category < ApplicationRecord
  # optional: trueは「belongs_toの外部キーのnilを許可するというもの」
  belongs_to :it_word, optional: true
end
