class StudentsController < ApplicationController
  def index
  end

  def show
  end

  def create
    student = Student.create(name: params[:student_name], year: params[:student_year], school_id: params[:school_id])
    if !student.valid?
      render json: {succeeded: false}
    else
      student.student_record = StudentRecord.create
      if !student.student_record.valid?
        render json: {succeeded: false}
      else
        render json: {succeeded: true}
      end
    end
  end

  def destroy
    student = Student.find(params[:id])
    if !student
      render json: {succeeded: false}
    else
      if student.student_record
        student.student_record.destroy
      end
      student.student_teacher_pairs.each do |stp|
        stp.destroy
      end
      student.destroy
      render json: {succeeded: true}
    end
  end

  def submit
    student = Student.find(params[:id])
    MainMailer.send_submission(params[:content]).deliver_now
    render json: StudentSubmitSerializer.new(student)
  end
end
