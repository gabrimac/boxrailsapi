require 'test_helper'

class FileStoragesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @file_storage = file_storages(:one)
  end

  test "should get index" do
    get file_storages_url
    assert_response :success
  end

  test "should create file_storage" do
    assert_difference('FileStorage.count') do
      post file_storages_url, params: { file_storage: { filename: @file_storage.filename, filesize: @file_storage.filesize, filetype: @file_storage.filetype, path: @file_storage.path, type: @file_storage.type, user_id: @file_storage.user_id } }
    end

    assert_response 201
  end

  test "should show file_storage" do
    get file_storage_url(@file_storage)
    assert_response :success
  end

  test "should update file_storage" do
    patch file_storage_url(@file_storage), params: { file_storage: { filename: @file_storage.filename, filesize: @file_storage.filesize, filetype: @file_storage.filetype, path: @file_storage.path, type: @file_storage.type, user_id: @file_storage.user_id } }
    assert_response 200
  end

  test "should destroy file_storage" do
    assert_difference('FileStorage.count', -1) do
      delete file_storage_url(@file_storage)
    end

    assert_response 204
  end
end
