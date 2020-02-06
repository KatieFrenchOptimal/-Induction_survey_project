class Study < ApplicationRecord
  has_many :questions
  validates :study_name, presence: true,
            length: { minimum: 5 }
end
