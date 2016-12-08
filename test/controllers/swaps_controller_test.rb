require 'test_helper'

class SwapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @swap = swaps(:one)
  end

  test "should get index" do
    get swaps_url, as: :json
    assert_response :success
  end

  test "should create swap" do
    assert_difference('Swap.count') do
      post swaps_url, params: { swap: { accepted: @swap.accepted, offer_id: @swap.offer_id, request_id: @swap.request_id } }, as: :json
    end

    assert_response 201
  end

  test "should show swap" do
    get swap_url(@swap), as: :json
    assert_response :success
  end

  test "should update swap" do
    patch swap_url(@swap), params: { swap: { accepted: @swap.accepted, offer_id: @swap.offer_id, request_id: @swap.request_id } }, as: :json
    assert_response 200
  end

  test "should destroy swap" do
    assert_difference('Swap.count', -1) do
      delete swap_url(@swap), as: :json
    end

    assert_response 204
  end
end
