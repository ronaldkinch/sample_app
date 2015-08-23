require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
    @views = [:home, :help, :about, :contact]
  end

  test "should get view" do
    @views.each do |view|
      get view
      assert_response :success
      title = css_select("title").text
      if title.include? "|"
        assert_equal title, "#{view.capitalize} | #{@base_title}"
      else
        assert_equal title, "#{@base_title}"
      end
    end
  end

end
