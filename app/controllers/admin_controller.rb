class AdminController < ApplicationController
  before_action :check_admin

  def show
  end

  private

  def check_admin
    if !current_admin
      redirect_to root_path
    end
  end
  
end