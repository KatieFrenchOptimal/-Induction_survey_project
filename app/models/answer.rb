class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :participant
  validates :text, presence: true,
            length: { minimum: 5, maximum: 100 }
end
