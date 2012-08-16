require 'test_helper'

class GroupsControllerTest < ActionController::TestCase
  setup do
    @group = groups(:developers)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group" do
    assert_difference('Group.count') do
      post :create, group: { name: @group.name }
    end

    assert_redirected_to group_path(assigns(:group))
  end

  test "should show group" do
    get :show, id: @group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group
    assert_response :success
  end

  test "should update group" do
    put :update, id: @group, group: { name: @group.name }
    assert_redirected_to group_path(assigns(:group))
  end

  test "should update group through json" do
    put :update, :format => :json, :id => @group.id, :group => { name: @group.name }
    assert_response :success
  end

  test "should not add a user to users if he's already present" do
    put :update, :format => :json, :id => @group.id, :group => {
      name: @group.name,
      user_ids: [ 1, 1, 2 ] }
    assert_response :success
    assert_equal @group.users.length, 2
  end

  test "should destroy group" do
    assert_difference('Group.count', -1) do
      # we check against an empty group
      # because developers can't be destroyed since it has users
      delete :destroy, id: groups(:germans)
    end

    assert_redirected_to groups_path
  end

end
