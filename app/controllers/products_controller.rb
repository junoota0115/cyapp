class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @products = Product.new
  end

  def create
    @products = Product.new(product_params)
    @products.save
    redirect_to root_path
  end

  def show
    @product = Product.find(params[:id])
  end

  def update
  end

  def edit
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to root_path
  end

  private
  def product_params
    params.require(:product).permit(:product_name, :price, :stock, :comment)
  end
end
