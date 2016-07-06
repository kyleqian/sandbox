# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

school = School.create!(name: "School name")

teacher = school.teachers.create!(name: "Teacher name", subject: "Teacher subject")
student = school.students.create!(name: "Student name", year: 4)

student2 = teacher.students.create!(name: "Student2 name", year: 3, school: school)
teacher2 = student.teachers.create!(name: "Teacher2 name", subject: "Teacher2 subject", school: school)

student_record = StudentRecord.create!(comments: "Comments", date_started: Time.now, credits: 170, student: student)
