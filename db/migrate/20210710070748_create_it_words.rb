class CreateItWords < ActiveRecord::Migration[5.2]
  def change
    create_table :it_words do |t|
      t.integer :user_id
      t.string :word
      t.integer :body

      t.timestamps
    end
  end
end
