class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        students_by_grade = Student.order(grade: :desc)
        render json: students_by_grade
    end

    def highest_grade
        highest_grade_student = Student.order(grade: :desc).first
        render json: highest_grade_student
    end

end
