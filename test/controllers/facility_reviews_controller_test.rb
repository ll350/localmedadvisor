require 'test_helper'

class FacilityReviewsControllerTest < ActionController::TestCase
  setup do
    @facility_review = facility_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:facility_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create facility_review" do
    assert_difference('FacilityReview.count') do
      post :create, facility_review: { description: @facility_review.description, facility: @facility_review.facility, rating: @facility_review.rating, reviewer: @facility_review.reviewer, title: @facility_review.title }
    end

    assert_redirected_to facility_review_path(assigns(:facility_review))
  end

  test "should show facility_review" do
    get :show, id: @facility_review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @facility_review
    assert_response :success
  end

  test "should update facility_review" do
    patch :update, id: @facility_review, facility_review: { description: @facility_review.description, facility: @facility_review.facility, rating: @facility_review.rating, reviewer: @facility_review.reviewer, title: @facility_review.title }
    assert_redirected_to facility_review_path(assigns(:facility_review))
  end

  test "should destroy facility_review" do
    assert_difference('FacilityReview.count', -1) do
      delete :destroy, id: @facility_review
    end

    assert_redirected_to facility_reviews_path
  end
end
