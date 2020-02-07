class Question < ApplicationRecord
  belongs_to :study
  has_many :answers, dependent: :destroy

  def next_question
    study.questions.where('id > ?', id).first
  end
end
