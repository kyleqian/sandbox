class AddStudentIdToStudentTeacherPairs < ActiveRecord::Migration[5.0]
  def change
    add_column :student_teacher_pairs, :student_id, :integer
    add_index :student_teacher_pairs, :student_id
  end
end
