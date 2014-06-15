require 'test_helper'

class ProviderReviewsControllerTest < ActionController::TestCase
  setup do
    @provider_review = provider_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:provider_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create provider_review" do
    assert_difference('ProviderReview.count') do
      post :create, provider_review: { description: @provider_review.description, provider: @provider_review.provider, rating: @provider_review.rating, reviewer: @provider_review.reviewer, title: @provider_review.title }
    end

    assert_redirected_to provider_review_path(assigns(:provider_review))
  end

  test "should show provider_review" do
    get :show, id: @provider_review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @provider_review
    assert_response :success
  end

  test "should update provider_review" do
    patch :update, id: @provider_review, provider_review: { description: @provider_review.description, provider: @provider_review.provider, rating: @provider_review.rating, reviewer: @provider_review.reviewer, title: @provider_review.title }
    assert_redirected_to provider_review_path(assigns(:provider_review))
  end

  test "should destroy provider_review" do
    assert_difference('ProviderReview.count', -1) do
      delete :destroy, id: @provider_review
    end

    assert_redirected_to provider_reviews_path
  end
end
