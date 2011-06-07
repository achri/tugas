class HomesController < ApplicationController
  def index
    @products = Product.all(:order => "created_at desc", :limit => 6)
    @articles = Article.all(:order => "created_at desc", :limit => 3)
  end
end
