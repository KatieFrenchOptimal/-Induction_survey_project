class Question < ApplicationRecord
  belongs_to :study
  has_many :answers, dependent: :destroy
  validates :question, presence: true,
            length: { minimum: 1 }
  def next_question
    study.questions.where('id > ?', id).first
  end
end
