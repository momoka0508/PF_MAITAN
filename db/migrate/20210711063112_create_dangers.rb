class CreateDangers < ActiveRecord::Migration[5.2]
  def change
    create_table :dangers do |t|
      t.integer :user_id
      t.integer :it_word_id

      t.timestamps
    end
  end
end
