class RemoveBodyFromItWords < ActiveRecord::Migration[5.2]
  def change
    remove_column :it_words, :body, :integer
  end
end
