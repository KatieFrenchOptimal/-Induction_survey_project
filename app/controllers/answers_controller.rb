class AnswersController < ApplicationController
  def new
    @study = Study.find(params[:study_id])
    @question = @study.questions.find(params[:question_id])
    @participant = find_participant
    @answer = @question.answers.build(participant: @participant)
  end

  def create
    @study = Study.find(params[:study_id])
    @question = @study.questions.find(params[:question_id])
    @answer = @question.answers.build(answer_params)
    
    if @answer.save

      next_question = @question.next_question
      redirect_to next_question_path(next_question, @answer) if next_question.present?
    else
      # render 'questions/answers/new'
      render plain: "not valid"
    end
  end  

    
    

  private

  def find_participant
    if params[:participant_id].present?
      Participant.find(params[:participant_id])
    else
      Participant.create
    end
  end

  def answer_params
    params.require(:answer).permit(:text, :participant_id)
  end

  def next_question_path(next_question, answer)
    new_study_question_answer_path(@study, next_question, participant_id: answer.participant_id)
  end
end
