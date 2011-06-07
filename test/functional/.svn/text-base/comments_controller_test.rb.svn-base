require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  # Replace this with your real tests.
  def setup
    @comment = Comment.find(:first)
  end

  def test_create
    assert_difference('Comment.count') do
      post :create, :comment => {:comment => 'new comment', :article_id => 1, :user_id => 1}
      assert_not_nil assigns(:comment)
      assert_equal flash[:notice], "Comment was successfully created."
    end
    assert_response :success
  end

  def test_create_with_invalid_parameter
    assert_no_difference('Comment.count') do
      post :create, :comment => {:comment => nil, :article_id => nil, :user_id => nil}
      assert_not_nil assigns(:comment)
      assert_equal assigns(:comment).valid?, false
      assert_equal flash[:error], "Comment has failed created."
    end
    assert_response :success
  end
end
