require "test_helper"

class RecipeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get recipe_index_url
    assert_response :success
  end
end
