require 'test_helper'

class NummersControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:nummers)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_nummer
    assert_difference('Nummer.count') do
      post :create, :nummer => { }
    end

    assert_redirected_to nummer_path(assigns(:nummer))
  end

  def test_should_show_nummer
    get :show, :id => nummers(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => nummers(:one).id
    assert_response :success
  end

  def test_should_update_nummer
    put :update, :id => nummers(:one).id, :nummer => { }
    assert_redirected_to nummer_path(assigns(:nummer))
  end

  def test_should_destroy_nummer
    assert_difference('Nummer.count', -1) do
      delete :destroy, :id => nummers(:one).id
    end

    assert_redirected_to nummers_path
  end
end
