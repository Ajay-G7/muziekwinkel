require 'test_helper'

class AankoopsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:aankoops)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_aankoop
    assert_difference('Aankoop.count') do
      post :create, :aankoop => { }
    end

    assert_redirected_to aankoop_path(assigns(:aankoop))
  end

  def test_should_show_aankoop
    get :show, :id => aankoops(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => aankoops(:one).id
    assert_response :success
  end

  def test_should_update_aankoop
    put :update, :id => aankoops(:one).id, :aankoop => { }
    assert_redirected_to aankoop_path(assigns(:aankoop))
  end

  def test_should_destroy_aankoop
    assert_difference('Aankoop.count', -1) do
      delete :destroy, :id => aankoops(:one).id
    end

    assert_redirected_to aankoops_path
  end
end
