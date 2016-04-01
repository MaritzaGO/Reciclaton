require 'test_helper'

class AlliancesControllerTest < ActionController::TestCase
  setup do
    @alliance = alliances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alliances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alliance" do
    assert_difference('Alliance.count') do
      post :create, alliance: { agreed_quantity: @alliance.agreed_quantity, client_recipient_id: @alliance.client_recipient_id, client_supplier_id: @alliance.client_supplier_id, demand_id: @alliance.demand_id, supply_id: @alliance.supply_id }
    end

    assert_redirected_to alliance_path(assigns(:alliance))
  end

  test "should show alliance" do
    get :show, id: @alliance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alliance
    assert_response :success
  end

  test "should update alliance" do
    patch :update, id: @alliance, alliance: { agreed_quantity: @alliance.agreed_quantity, client_recipient_id: @alliance.client_recipient_id, client_supplier_id: @alliance.client_supplier_id, demand_id: @alliance.demand_id, supply_id: @alliance.supply_id }
    assert_redirected_to alliance_path(assigns(:alliance))
  end

  test "should destroy alliance" do
    assert_difference('Alliance.count', -1) do
      delete :destroy, id: @alliance
    end

    assert_redirected_to alliances_path
  end
end
