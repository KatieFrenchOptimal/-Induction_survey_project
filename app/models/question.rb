class Question < ApplicationRecord
  belongs_to :study
  has_many :answers
end
