class PainAssessment < ApplicationRecord
  belongs_to :resident, optional: true
end
