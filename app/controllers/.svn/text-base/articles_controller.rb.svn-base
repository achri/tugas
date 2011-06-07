class ArticlesController < ApplicationController
  before_filter :require_login, :except => [:index, :show]
  before_filter :find_article, :only => [:show, :edit, :update, :destroy]

  def index
    @articles = Article.paginate :page => params[:page]
    @row_number = @articles.offset + 1
    if @articles.nil?
      flash[:error] = "It's empty Articles"
      #render :action => "index"
    end
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])
    if @article.save
      flash[:notice] = "Article was successful created."
      redirect_to article_path(@article)
    else
      flash[:error] = "Articles has failed created."
      render :action => "new"
    end
  end

  def edit
  end

  def update
    if @article.update_attributes(params[:article])
      flash[:notice] = "Article was successful updated."
      redirect_to article_path(@article)
    else
      flash[:error] = "Article has failed updated."
      render :action => "edit"
    end
  end

  def show
    @comment = Comment.new  # new comment
    @comments = Comment.find_all_by_article_id(params[:id])
    @article = Article.find(params[:id])
    if @article.nil?
      flash[:error] = "Article not found!"
      redirect_to homes_path
    end
  end

  def destroy
    @article.destroy ? (flash[:notice] = "Category was successfully deleted.") :
                       (flash[:notice] = "Category has failed to delete.")
    redirect_to articles_path
  end

  private
    def find_article
      @article = Article.find_by_id(params[:id])
      if @article.nil?
        flash[:notice] = "Can't find an article."
        redirect_to articles_path
      end
    end

end
