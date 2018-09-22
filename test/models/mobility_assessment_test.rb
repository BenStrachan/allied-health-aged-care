# == Schema Information
#
# Table name: mobility_assessments
#
#  id          :bigint(8)        not null, primary key
#  date        :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  business_id :integer
#  author_id   :integer
#

require 'test_helper'

class MobilityAssessmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
