class Participant < ApplicationRecord
  has_many :answers, dependent: :destroy
end
