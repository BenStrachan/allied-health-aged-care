require 'test_helper'

class PostFallAssessmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_fall_assessment = post_fall_assessments(:one)
  end

  test "should get index" do
    get post_fall_assessments_url
    assert_response :success
  end

  test "should get new" do
    get new_post_fall_assessment_url
    assert_response :success
  end

  test "should create post_fall_assessment" do
    assert_difference('PostFallAssessment.count') do
      post post_fall_assessments_url, params: { post_fall_assessment: { author_id: @post_fall_assessment.author_id, business_id: @post_fall_assessment.business_id, date: @post_fall_assessment.date } }
    end

    assert_redirected_to post_fall_assessment_url(PostFallAssessment.last)
  end

  test "should show post_fall_assessment" do
    get post_fall_assessment_url(@post_fall_assessment)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_fall_assessment_url(@post_fall_assessment)
    assert_response :success
  end

  test "should update post_fall_assessment" do
    patch post_fall_assessment_url(@post_fall_assessment), params: { post_fall_assessment: { author_id: @post_fall_assessment.author_id, business_id: @post_fall_assessment.business_id, date: @post_fall_assessment.date } }
    assert_redirected_to post_fall_assessment_url(@post_fall_assessment)
  end

  test "should destroy post_fall_assessment" do
    assert_difference('PostFallAssessment.count', -1) do
      delete post_fall_assessment_url(@post_fall_assessment)
    end

    assert_redirected_to post_fall_assessments_url
  end
end
