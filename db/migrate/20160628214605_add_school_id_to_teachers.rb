class AddSchoolIdToTeachers < ActiveRecord::Migration[5.0]
  def change
    add_column :teachers, :school_id, :integer
    add_index :teachers, :school_id
  end
end
