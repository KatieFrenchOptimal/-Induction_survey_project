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

  def edit
    @study = Study.find(params[:id])
  end

  def create
    @study = Study.new(study_params)

    if @study.save
      redirect_to @study
    else
      render 'new'
    end
  end

  def update
    @study = Study.find(params[:id])

    if @study.update(study_params)
      redirect_to @study
    else
      render 'edit'
    end
  end

  def destroy
    @study = Study.find(params[:id])
    @study.destroy

    redirect_to studies_path
  end

  private

  def study_params
    params.require(:study).permit(:study_name)
  end
end
