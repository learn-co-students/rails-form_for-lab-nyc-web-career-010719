class SchoolClassesController < ApplicationController

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    # byebug
    @school_class = SchoolClass.new(params[:school_class])
  	@school_class.save
  	redirect_to school_class_path(@school_class)
  end

  def update
    @school_class = SchoolClass.find(params[:id])
  	@school_class.update(params[:school_class])
  	redirect_to school_class_path(@school_class)
  end

  def edit
	  @school_class = SchoolClass.find(params[:id])
	end


end
