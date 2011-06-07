require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  def test_save_without_name
    test_data = Category.new(:parent_id => 1)
    assert_equal test_data.valid?, false
    assert_equal test_data.save, false
  end

  def test_save_with_unique_name
    Category.new(:name => "Fashion")
    test_data = Category.new(:name => "Fashion")
    assert_equal test_data.valid?, true
    assert_equal test_data.save, true
  end
  
end
