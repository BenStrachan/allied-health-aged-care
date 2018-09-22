require 'test_helper'

class PainAssessmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pain_assessment = pain_assessments(:one)
  end

  test "should get index" do
    get pain_assessments_url
    assert_response :success
  end

  test "should get new" do
    get new_pain_assessment_url
    assert_response :success
  end

  test "should create pain_assessment" do
    assert_difference('PainAssessment.count') do
      post pain_assessments_url, params: { pain_assessment: { author_id: @pain_assessment.author_id, business_id: @pain_assessment.business_id, date: @pain_assessment.date } }
    end

    assert_redirected_to pain_assessment_url(PainAssessment.last)
  end

  test "should show pain_assessment" do
    get pain_assessment_url(@pain_assessment)
    assert_response :success
  end

  test "should get edit" do
    get edit_pain_assessment_url(@pain_assessment)
    assert_response :success
  end

  test "should update pain_assessment" do
    patch pain_assessment_url(@pain_assessment), params: { pain_assessment: { author_id: @pain_assessment.author_id, business_id: @pain_assessment.business_id, date: @pain_assessment.date } }
    assert_redirected_to pain_assessment_url(@pain_assessment)
  end

  test "should destroy pain_assessment" do
    assert_difference('PainAssessment.count', -1) do
      delete pain_assessment_url(@pain_assessment)
    end

    assert_redirected_to pain_assessments_url
  end
end
