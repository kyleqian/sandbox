class CreateStudentTeacherPairs < ActiveRecord::Migration[5.0]
  def change
    create_table :student_teacher_pairs do |t|

      t.timestamps
    end
  end
end
