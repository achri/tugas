require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  #test_data = Product.new(:name, :price, :description, :location, :weight, :user_id, :category_id)
  def test_save_without_name
    test_data = Product.new(:price => 1400, :description => "Test product 1", 
      :location => "Location 1", :weight => 46, :user_id => 1, :category_id => 1)
    assert_equal test_data.valid?, false
    assert_equal test_data.save, false
  end

  def test_save_without_price
    test_data = Product.new(:name => "Product 1", :description => "Test product 1",
      :location => "Location 1",:weight => 50, :user_id => 1, :category_id => 1)
    assert_equal test_data.valid?, false
    assert_equal test_data.save, false
  end

  def test_save_with_price_not_number
    test_data = Product.new(:name => "Product 1", :price => "123", :description => "Test product 1",
      :location => "Location 1", :weight => 50, :user_id => 1, :category_id => 1)
    assert_equal test_data.valid?, true
    assert_equal test_data.save, true
  end

  def test_save_with_weight_not_number
    test_data = Product.new(:name => "Product 1", :price => 123, :description => "Test product 1",
      :location => "Location 1", :weight => "50", :user_id => 1, :category_id => 1)
    assert_equal test_data.valid?, true
    assert_equal test_data.save, true
  end

  def test_save_with_unique_name
    Product.new(:name => "Product 1", :price => 123, :description => "Test product 1",
      :location => "Location 1", :weight => 50, :user_id => 1, :category_id => 1)
    test_data = Product.new(:name => "Product 1", :price => 123, :description => "Test product 1",
      :location => "Location 1", :weight => 50, :user_id => 1, :category_id => 1)
    assert_equal test_data.valid?, true
    assert_equal test_data.save, true
  end
end
