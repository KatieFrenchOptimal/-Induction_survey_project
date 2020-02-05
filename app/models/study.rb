class Study < ApplicationRecord
  validates :study_name, presence: true,
            length: { minimum: 5 }
end
