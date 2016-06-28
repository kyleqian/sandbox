class AddSchoolIdToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :school_id, :integer
    add_index :students, :school_id
  end
end
