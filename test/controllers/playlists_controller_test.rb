require 'test_helper'

class PlaylistsControllerTest < ActionDispatch::IntegrationTest
  test "should get index," do
    get playlists_index,_url
    assert_response :success
  end

  test "should get show," do
    get playlists_show,_url
    assert_response :success
  end

  test "should get edit," do
    get playlists_edit,_url
    assert_response :success
  end

  test "should get create" do
    get playlists_create_url
    assert_response :success
  end

end
