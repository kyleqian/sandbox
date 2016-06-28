class AddTeacherIdToStudentTeacherPairs < ActiveRecord::Migration[5.0]
  def change
    add_column :student_teacher_pairs, :teacher_id, :integer
    add_index :student_teacher_pairs, :teacher_id
  end
end
