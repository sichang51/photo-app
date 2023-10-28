require "test_helper"

class PhotosControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "index" do
    get "/photos.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Photo.count, data.length
  end
end
