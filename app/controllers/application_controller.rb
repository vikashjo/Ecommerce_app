class ApplicationController < ActionController::Base

private

  def check_admin
    if !current_admin
      redirect_to root_path
    end
  end
end
