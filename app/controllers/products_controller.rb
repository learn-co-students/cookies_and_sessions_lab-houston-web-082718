class ProductsController < ApplicationController

    def index # products_path
        @cart = cart
    end

    def add
        # @cart = session[:cart]
        # @cart << params[:product]
        # session[:cart] = @cart
        session[:cart] << params[:product]

        redirect_to products_path
    end

end