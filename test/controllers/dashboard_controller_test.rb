require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = ' | Japan America Society of Vermont'
  end
  
  test 'should get show' do
    get dashboard_index_url
    assert_response :success
    assert_select 'title', "Home#{@base_title}"
  end
  
  # all pages should have navigation
  test "should get root" do
    get root_url
    assert_response :success
    assert_select 'title', "Home#{@base_title}"
  end
end
