class StudentsController < ApplicationController
  def index
    @filters = request_filters
    @students = Student.search @filters
    # implicit: render 'index'
  end

  def show
    @student = Student.find params[:id]
    # implicit: render 'show'
  end

  def new
    @student = Student.new
    # implicit: render 'new'
  end

  def create
    @student = Student.create! permitted_params

    flash[:notice] = "Student #{@student.full_name} was successfully created!"
    redirect_to students_path
  end

  def edit
    @student = Student.find params[:id]
    # implicit: render 'edit'
  end

  def update
    @student = Student.find params[:id]
    @student.update_attributes! permitted_params

    flash[:notice] = "Student #{@student.full_name} was successfully updated!"
    redirect_to student_path(@student)
  end

  def destroy
    @student = Student.find params[:id]
    @student.destroy!

    flash[:notice] = "Student #{@student.full_name} was successfully deleted!"
    redirect_to students_path
  end

  private

  def request_filters
    {
        name: filter_value(:name),
        surname: filter_value(:surname),
        dept: filter_value(:department)
    }
  end

  def filter_value (criteria)
    val = nil
    if params[:filter] and params[:filter][criteria]
      val = params[:filter][criteria]
    end
    val.to_s
  end

  def permitted_params
    params.require(:student)
    params[:student].permit(:name,:surname,:email, :department_code, :birthday)
  end
end