class AddCategoryIdToItWord < ActiveRecord::Migration[5.2]
  def change
    add_column :it_words, :category_id, :integer
  end
end
