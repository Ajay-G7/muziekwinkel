require 'test_helper'

class MedewerkersControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:medewerkers)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_medewerker
    assert_difference('Medewerker.count') do
      post :create, :medewerker => { }
    end

    assert_redirected_to medewerker_path(assigns(:medewerker))
  end

  def test_should_show_medewerker
    get :show, :id => medewerkers(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => medewerkers(:one).id
    assert_response :success
  end

  def test_should_update_medewerker
    put :update, :id => medewerkers(:one).id, :medewerker => { }
    assert_redirected_to medewerker_path(assigns(:medewerker))
  end

  def test_should_destroy_medewerker
    assert_difference('Medewerker.count', -1) do
      delete :destroy, :id => medewerkers(:one).id
    end

    assert_redirected_to medewerkers_path
  end
end
