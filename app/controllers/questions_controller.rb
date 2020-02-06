class QuestionsController < ApplicationController
  def create
    @study = Study.find(params[:study_id])
    @question = @study.questions.create(question_params)
    redirect_to study_path(@study)
  end

  private
  def question_params
    params.require(:question).permit(:question)
  end
end
