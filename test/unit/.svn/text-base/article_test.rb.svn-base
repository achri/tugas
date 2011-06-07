require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  def test_save_without_body
    test_data = Article.new(:title => "Lorem ipsum")
    assert_equal test_data.valid?, false
    assert_equal test_data.save, false
  end

  def test_save_without_title
    test_data = Article.new(:body => "Lorem ipsum sit dolor kolot")
    assert_equal test_data.valid?, false
    assert_equal test_data.save, false
  end

  def test_save_without_user_id
    test_data = Article.new(:title => "Lorem ipsum", :body => "Lorem ipsum sit dolor kolot")
    assert_equal test_data.valid?,false
    assert_equal test_data.save,false
  end

  def test_relation_has_many_comment_count
    # test_data using fixtures
    article = Article.find(:first)
    assert_equal article.comments.count, 2
  end
  
end
