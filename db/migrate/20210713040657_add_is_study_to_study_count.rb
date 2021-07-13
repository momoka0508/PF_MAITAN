class AddIsStudyToStudyCount < ActiveRecord::Migration[5.2]
  def change
    add_column :study_counts, :is_study, :boolean, default: false
  end
end
