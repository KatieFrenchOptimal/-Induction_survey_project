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
      #I want to render the current page the participant is on to display errors.
      # render "studies/#{@study.id}/questions/#{@question.id}/answers/new"
      # redirect_to new_study_question_answer_path(study_id:  @study.id, question_id: @study.questions.id)
      flash[:notice] = @answer.errors.full_messages.first 
      render :new 
      
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
