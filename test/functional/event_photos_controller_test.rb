require 'test_helper'

class EventPhotosControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:event_photos)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_event_photo
    assert_difference('EventPhoto.count') do
      post :create, :event_photo => { }
    end

    assert_redirected_to event_photo_path(assigns(:event_photo))
  end

  def test_should_show_event_photo
    get :show, :id => event_photos(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => event_photos(:one).id
    assert_response :success
  end

  def test_should_update_event_photo
    put :update, :id => event_photos(:one).id, :event_photo => { }
    assert_redirected_to event_photo_path(assigns(:event_photo))
  end

  def test_should_destroy_event_photo
    assert_difference('EventPhoto.count', -1) do
      delete :destroy, :id => event_photos(:one).id
    end

    assert_redirected_to event_photos_path
  end
end
