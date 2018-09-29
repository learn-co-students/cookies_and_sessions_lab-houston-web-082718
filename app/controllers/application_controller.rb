class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @cart = cart
  end
  
  def cart

    if session[:cart]
      cart = session[:cart]
    else
      session[:cart] = []
      cart = session[:cart]
    end

    cart

  end

  def add_to_cart
    my_cart = cart
    my_cart << params[:product]
    redirect_to products_path
  end


end
