class HomeController < ApplicationController
  
  def index
    @contents = Content.order("created_at DESC").page(params[:page]).per(3)
  end
  
  def show
    @content = Content.find(params[:id])
  end
  
  def list
    @contents = Content.order("title")
  end
  

end
