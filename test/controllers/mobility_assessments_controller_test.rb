require 'test_helper'

class MobilityAssessmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mobility_assessment = mobility_assessments(:one)
  end

  test "should get index" do
    get mobility_assessments_url
    assert_response :success
  end

  test "should get new" do
    get new_mobility_assessment_url
    assert_response :success
  end

  test "should create mobility_assessment" do
    assert_difference('MobilityAssessment.count') do
      post mobility_assessments_url, params: { mobility_assessment: { date: @mobility_assessment.date } }
    end

    assert_redirected_to mobility_assessment_url(MobilityAssessment.last)
  end

  test "should show mobility_assessment" do
    get mobility_assessment_url(@mobility_assessment)
    assert_response :success
  end

  test "should get edit" do
    get edit_mobility_assessment_url(@mobility_assessment)
    assert_response :success
  end

  test "should update mobility_assessment" do
    patch mobility_assessment_url(@mobility_assessment), params: { mobility_assessment: { date: @mobility_assessment.date } }
    assert_redirected_to mobility_assessment_url(@mobility_assessment)
  end

  test "should destroy mobility_assessment" do
    assert_difference('MobilityAssessment.count', -1) do
      delete mobility_assessment_url(@mobility_assessment)
    end

    assert_redirected_to mobility_assessments_url
  end
end
