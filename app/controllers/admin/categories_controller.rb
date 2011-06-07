class Admin::CategoriesController < Admin::ApplicationController
  before_filter :require_admin_login
  before_filter :find_category, :only => [:show, :edit, :update, :destroy]

  def index
    @categories = Category.find(:all)
  end

  def show
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params[:category])
    if @category.save
      flash[:notice] = "Category was successfull created."
      redirect_to([:admin,@categories])
    else
      flash[:error] = "Category was failed created."
      render :action => "new"
    end
  end

  def edit
  end

  def update
    if @category.update_attributes(params[:category])
      flash[:notice] = "Category was successfull updated."
      redirect_to([:admin,@category])
    else
      flash[:error] = "Category was failed updated."
      render :action => "edit"
    end
  end

  def destroy
    @category.destroy ? (flash[:notice] = "Category was successfully deleted.") :
                    (flash[:notice] = "category was failed to delete.")
    redirect_to admin_categories_path
  end

  private
    def find_category
      @category = Category.find_by_id(params[:id])
      if @category.nil?
        flash[:notice] = "Cannot find category"
        redirect_to admin_categories_path
      end
    end
end
