require 'test_helper'

class CommentaarsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:commentaars)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_commentaar
    assert_difference('Commentaar.count') do
      post :create, :commentaar => { }
    end

    assert_redirected_to commentaar_path(assigns(:commentaar))
  end

  def test_should_show_commentaar
    get :show, :id => commentaars(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => commentaars(:one).id
    assert_response :success
  end

  def test_should_update_commentaar
    put :update, :id => commentaars(:one).id, :commentaar => { }
    assert_redirected_to commentaar_path(assigns(:commentaar))
  end

  def test_should_destroy_commentaar
    assert_difference('Commentaar.count', -1) do
      delete :destroy, :id => commentaars(:one).id
    end

    assert_redirected_to commentaars_path
  end
end
