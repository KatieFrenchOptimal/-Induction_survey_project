class AnswersController < ApplicationController
  def new
    @study = Study.find(params[:study_id])
    @question = @study.questions.find(params[:question_id])
    @participant = Participant.create
    @answer = @question.answers.build(participant: @participant)
  end

  def create
    @study = Study.find(params[:study_id])
    @question = @study.questions.find(params[:question_id])
    @answer = @question.answers.build(answer_params)

    @answer.save
  end

  private
  def answer_params
    params.require(:answer).permit(:text, :participant_id)
  end
end
