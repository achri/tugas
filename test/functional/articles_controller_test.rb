require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
  # Replace this with your real tests.
  def setup
    @article = Article.find(:first)
    login_as('quentin@example.com')
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:articles)
  end

  def test_new
    get :new, :id => 1
    assert_not_nil assigns(:article)
    assert_response :success
  end

  def test_create
    assert_difference('Article.count') do
      post :create, :article => {:title => 'new title', :body => "new body", :user_id => 1}
      assert_not_nil assigns(:article)
      assert_equal flash[:notice], "Article was successful created."
    end
    assert_response :redirect
    assert_redirected_to article_path(assigns(:article))
  end

  def test_create_with_invalid_parameter
    assert_no_difference('Article.count') do
      post :create, :article => {:title => nil, :body => nil, :user_id => nil}
      assert_not_nil assigns(:article)
      assert_equal assigns(:article).valid?, false
      assert_equal flash[:error], "Articles has failed created."
    end
    assert_response :success
  end

  def test_show
    get :show, :id => Article.first.id
    assert_not_nil assigns(:article)
    assert_not_nil assigns(:comments)
    assert_response :success
  end

  def test_show_with_undefined_id
    get :show, :id => Time.now.to_i
    assert_nil assigns(:article)
    assert_nil assigns(:comments)
    assert_response :redirect
    assert_redirected_to articles_path
  end

  def test_edit
    get :edit, :id => Article.first.id
    assert_not_nil assigns(:article)
    assert_response :success
  end

  def test_edit_with_undefined_id
    get :edit, :id => Time.now.to_i
    assert_nil assigns(:article)
    assert_response :redirect
    assert_redirected_to articles_path
  end

  def test_update
    put :update, :id => Article.first.id,
                 :article => {:title => 'updated title', :body => "updated body"}
    assert_not_nil assigns(:article)
    assert_equal assigns(:article).title, 'updated title'
    assert_response :redirect
    assert_redirected_to article_path(assigns(:article))
  end

  def test_update_with_undefined_id
    put :update, :id => Time.now.to_i,
                 :article => {:title => 'updated title', :body => "updated body"}
    assert_nil assigns(:article)
    assert_response :redirect
    assert_redirected_to articles_path
  end

  def test_update_with_invalid_parameter
    put :update, :id => Article.first.id,
                 :article => {:title => nil, :body => nil}
    assert_not_nil assigns(:article)
    assert_response :success
  end

  def test_destroy
    assert_difference('Article.count', -1) do
      delete :destroy, :id => Article.first.id
      assert_not_nil assigns(:article)
    end
    assert_response :redirect
    assert_redirected_to articles_path
  end

  def test_destroy_with_undefined_id
    assert_no_difference('Article.count') do
      delete :destroy, :id => Time.now.to_i
      assert_nil assigns(:article)
    end
    assert_response :redirect
    assert_redirected_to articles_path
  end

end
