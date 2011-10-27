class ProductsController < ApplicationController
   def index
      @q = Product.search(params[:q])
      @products = @q.result(:distinct => true).paginate(:page => params[:page], :per_page => 10)
   end

   def new
      @product = Product.new
   end

   def show
      @product = Product.find(params[:id])
   end

   def create
      prodcut = Product.new(params[:product])
      product.save
      reditect_to product
   end
end
