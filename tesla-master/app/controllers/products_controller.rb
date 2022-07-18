class ProductsController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  def index
    @products = Product.paginate(page: params[:page], per_page: 3)
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
      respond_to do |format|

      if @product.update(product_params)
        format.html { redirect_to product_path(@product), notice: "Product details was successfully updated." }
        
      else
        format.html { render :new, status: :unprocessable_entity }
        
      end
    end
  end

  def create
    @product = Product.create(product_params)
    respond_to do |format|
      if @product.save
        format.html { redirect_to product_path(@product), notice: "Product was successfully created." }
        
      else
        format.html { render :new, status: :unprocessable_entity }
        
      end
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    respond_to do |format|
      format.html { redirect_to product_path(@product), notice: "Product was successfully destroyed." }
     
    
    end
end
    private

  def product_params
    params.require(:product).permit(:name, :color, :price)
  end
end
