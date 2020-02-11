class Study < ApplicationRecord
  has_many :questions, dependent: :destroy
  scope :recent, -> { where('created_at > ?', 1.week.ago) }
  validates :study_name, presence: true,
            length: { minimum: 5 }
  
end
