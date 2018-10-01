class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :cart

  def cart
    # Load the cart from the session, or create a new empty cart.
    # session[:cart] ||= []
    if session[:cart]
      cart = session[:cart]
    else
      session[:cart] = []
      cart = session[:cart]
    end

    cart
  end

end
