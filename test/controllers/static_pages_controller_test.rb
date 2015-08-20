require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
    @views = [:help, :about, :contact]
  end

  test "should get view" do
    @views.each do |view|
      get view
      assert_response :success
      assert_select "title", "#{view.capitalize} | #{@base_title}"
    end
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
    # assert_select "title", "Home | Ruby on Rails Tutorial Sample App"
  end

end
