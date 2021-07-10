class AddBodyToItWords < ActiveRecord::Migration[5.2]
  def change
    add_column :it_words, :body, :text
  end
end
