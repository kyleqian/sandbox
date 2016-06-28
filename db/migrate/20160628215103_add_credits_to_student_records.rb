class AddCreditsToStudentRecords < ActiveRecord::Migration[5.0]
  def change
    add_column :student_records, :credits, :integer
  end
end
