class StudiesController < ApplicationController
  def index
    @studies = Study.all
  end

  def show
    @study = Study.find(params[:id])
  end

  def new
    @study = Study.new
  end

  def create
    @study = Study.new(study_params)

    if @study.save
      redirect_to @study
    else
      render 'new'
    end
  end

  private
  def study_params
    params.require(:study).permit(:study_name)
  end
end
