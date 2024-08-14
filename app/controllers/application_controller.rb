class ApplicationController < ActionController::Base
  before_action :set_current_cart

  protected

  def check_admin
    if !current_admin
      redirect_to root_path
    end
  end

  def set_current_cart
    if session[:current_cart_id]
      @current_cart = Cart.find_by_secret_id(session[:current_cart_id])
    end
  end
end
