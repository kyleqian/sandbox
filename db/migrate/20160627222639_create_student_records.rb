class CreateStudentRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :student_records do |t|
      t.text :comments
      t.date :date_started

      t.timestamps
    end
  end
end
