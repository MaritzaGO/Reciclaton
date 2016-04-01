require 'test_helper'

class ResiduesControllerTest < ActionController::TestCase
  setup do
    @residue = residues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:residues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create residue" do
    assert_difference('Residue.count') do
      post :create, residue: { available_quantity: @residue.available_quantity, category_id: @residue.category_id, name_redidue: @residue.name_redidue }
    end

    assert_redirected_to residue_path(assigns(:residue))
  end

  test "should show residue" do
    get :show, id: @residue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @residue
    assert_response :success
  end

  test "should update residue" do
    patch :update, id: @residue, residue: { available_quantity: @residue.available_quantity, category_id: @residue.category_id, name_redidue: @residue.name_redidue }
    assert_redirected_to residue_path(assigns(:residue))
  end

  test "should destroy residue" do
    assert_difference('Residue.count', -1) do
      delete :destroy, id: @residue
    end

    assert_redirected_to residues_path
  end
end
