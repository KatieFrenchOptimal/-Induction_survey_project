class Study < ApplicationRecord
  has_many :questions, dependent: :destroy
  validates :study_name, presence: true,
            length: { minimum: 5 }
end
