class StudentsController < ApplicationController
  # before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  # private

    def activate
      @student = Student.find(params[:id])
      @student.active = !@student.active
      @stduent.save
      redirect_to_student_path(@student)
    end
end