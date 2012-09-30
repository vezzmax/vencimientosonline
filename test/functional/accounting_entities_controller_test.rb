require 'test_helper'

class AccountingEntitiesControllerTest < ActionController::TestCase
  setup do
    @accounting_entity = accounting_entities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accounting_entities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accounting_entity" do
    assert_difference('AccountingEntity.count') do
      post :create, accounting_entity: { description: @accounting_entity.description, name: @accounting_entity.name }
    end

    assert_redirected_to accounting_entity_path(assigns(:accounting_entity))
  end

  test "should show accounting_entity" do
    get :show, id: @accounting_entity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accounting_entity
    assert_response :success
  end

  test "should update accounting_entity" do
    put :update, id: @accounting_entity, accounting_entity: { description: @accounting_entity.description, name: @accounting_entity.name }
    assert_redirected_to accounting_entity_path(assigns(:accounting_entity))
  end

  test "should destroy accounting_entity" do
    assert_difference('AccountingEntity.count', -1) do
      delete :destroy, id: @accounting_entity
    end

    assert_redirected_to accounting_entities_path
  end
end
