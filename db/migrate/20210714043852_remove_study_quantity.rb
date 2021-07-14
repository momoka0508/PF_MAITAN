class RemoveStudyQuantity < ActiveRecord::Migration[5.2]
  def change
    drop_table:study_quantities
  end
end
