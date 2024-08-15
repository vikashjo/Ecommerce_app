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
      if current_user && !@current_cart.user
        @current_cart.update(user_id: current_user.id)
      end
    else
      if current_user && current_user.carts.any?
        @current_cart = current_user.carts.last
        session[:current_card_id] = @current_cart.secret_id
      end
    end
  end
end
