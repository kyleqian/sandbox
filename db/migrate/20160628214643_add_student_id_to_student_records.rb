class AddStudentIdToStudentRecords < ActiveRecord::Migration[5.0]
  def change
    add_column :student_records, :student_id, :integer
    add_index :student_records, :student_id
  end
end
