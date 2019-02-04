class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /school_classes
  # GET /school_classes.json
  def index
    @student = Student.all
  end

  # GET /school_classes/1
  # GET /school_classes/1.json
  def show
    @student = set_student
  end

  # GET /school_classes/new
  def new
    @student = Student.new
  end

  # GET /school_classes/1/edit
  def edit
  end



  def create
    @student = Student.create(first_name: params[:first_name],last_name: params[:last_name])
    redirect_to student_path(@student)


  end

  # PATCH/PUT /school_classes/1
  # PATCH/PUT /school_classes/1.json
  def update
    @student = set_student
    @student.update(students_params(:first_name,:last_name))
    redirect_to student_path(@student)
  end

  # DELETE /school_classes/1
  # DELETE /school_classes/1.json
  def destroy
    @student.destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def students_params(*args)
      params.require(:student).permit(*args)
    end
end
