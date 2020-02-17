class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :participant
  validates :answer, presence: true,
            length: { minimum: 5 }
end
