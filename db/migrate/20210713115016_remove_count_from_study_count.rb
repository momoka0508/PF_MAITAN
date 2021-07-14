class RemoveCountFromStudyCount < ActiveRecord::Migration[5.2]
  def change
    remove_column :study_counts, :count, :integer
  end
end
