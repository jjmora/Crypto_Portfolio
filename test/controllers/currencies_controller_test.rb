require 'test_helper'

class CurrenciesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get currencies_index_url
    assert_response :success
  end

  test "should get show" do
    get currencies_show_url
    assert_response :success
  end

end
