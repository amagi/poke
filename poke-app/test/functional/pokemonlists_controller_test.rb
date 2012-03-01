require 'test_helper'

class PokemonlistsControllerTest < ActionController::TestCase
  setup do
    @pokemonlist = pokemonlists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pokemonlists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pokemonlist" do
    assert_difference('Pokemonlist.count') do
      post :create, pokemonlist: @pokemonlist.attributes
    end

    assert_redirected_to pokemonlist_path(assigns(:pokemonlist))
  end

  test "should show pokemonlist" do
    get :show, id: @pokemonlist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pokemonlist
    assert_response :success
  end

  test "should update pokemonlist" do
    put :update, id: @pokemonlist, pokemonlist: @pokemonlist.attributes
    assert_redirected_to pokemonlist_path(assigns(:pokemonlist))
  end

  test "should destroy pokemonlist" do
    assert_difference('Pokemonlist.count', -1) do
      delete :destroy, id: @pokemonlist
    end

    assert_redirected_to pokemonlists_path
  end
end
