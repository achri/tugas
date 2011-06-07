require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  def test_save_without_article_id
    test_data = Comment.new(:comment => "Comment Lorem ipsum1")
    assert_equal test_data.valid?, false
    assert_equal test_data.save, false
  end

  def test_save_without_comment
    test_data = Comment.new(:article_id => 1)
    assert_equal test_data.valid?, false
    assert_equal test_data.save, false
  end

  def test_save_with_all
    test_data = Comment.new(:comment => "Comment Lorem ipsum2", :article_id => 1)
    assert_equal test_data.valid?, false
    assert_equal test_data.save, false
  end
  
end
