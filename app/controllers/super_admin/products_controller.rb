module SuperAdmin
  class ProductsController < ApplicationController
    def index
      @products = Product.all
    end
  
    def new
      @product = Product.new
    end
  
    def edit
    end
  
    def show
    end
  
    private
      def find_product
        @product = Product.find_by(params[:id])
      end
  end  
end