require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  # Replace this with your real tests.
  def setup
    @products = Product.find(:first)
    login_as('quentin@example.com')
  end
end
