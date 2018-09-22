class PostFallAssessment < ApplicationRecord
  belongs_to :resident, optional: true
end
