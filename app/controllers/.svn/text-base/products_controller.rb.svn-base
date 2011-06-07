class ProductsController < ApplicationController
  before_filter :require_login, :except => [:index, :show]

  def index
    @products = Product.paginate :page => params[:page]
    @row_number = @products.offset + 1
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product])
    if @product.save
      flash[:notice] = "Product successfull was created."
      #redirect_to(products_path)
      render :action => "new"
    else
      flash[:error] = "Product failed to created."
      #redirect_to(products_path)
      render :action => "new"
    end
  end

  def show
    @product = Product.find(params[:id])
  end

end
