require 'test_helper'

class HomesControllerTest < ActionController::TestCase
  # Replace this with your real tests.
  def setup
    @product = Product.find(:first)
    @article = Article.find(:first)
    login_as('quentin@example.com')
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:product)
    assert_not_nil assigns(:article)
  end
end
