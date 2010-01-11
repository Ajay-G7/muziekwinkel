require 'test_helper'

class KlantsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:klants)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_klant
    assert_difference('Klant.count') do
      post :create, :klant => { }
    end

    assert_redirected_to klant_path(assigns(:klant))
  end

  def test_should_show_klant
    get :show, :id => klants(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => klants(:one).id
    assert_response :success
  end

  def test_should_update_klant
    put :update, :id => klants(:one).id, :klant => { }
    assert_redirected_to klant_path(assigns(:klant))
  end

  def test_should_destroy_klant
    assert_difference('Klant.count', -1) do
      delete :destroy, :id => klants(:one).id
    end

    assert_redirected_to klants_path
  end
end
