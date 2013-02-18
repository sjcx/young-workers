class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  def bounce
    if admin_signed_in?
      return
    else
      redirect_to root_url
      flash[:error] = "You aren't authorized to view that resource!"
    end
  end
end
