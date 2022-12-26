class ProductsController < ApplicationController
  def index
    # @products = Product.all
    @products = Product.page(params[:page]).per(5).order('id DESC')
  end

  def new
    @products = Product.new
  end

  def create
    @products = Product.new(product_params)
    if @products.save
    redirect_to root_path
    else
      render :new
  end
  end

  def show
    @product = Product.find(params[:id])
  end
  
  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to @product
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to root_path
  end

  def search
    @products = Product.search(params[:keyword])
    @keyword = params[:keyword]
    render "index"
  end

  private
  def product_params

    params.require(:product).permit(:product_name, :price, :stock, :comment,:image)

  end
end
