class ContentsController < ApplicationController

  
  def index
    @contents = Content.all(:order => "created_at DESC")
  end
  
  def new
    @content = Content.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @content  }
    end
  end
  
  def show
    @content = Content.find(params[:id])
  end

  def edit
    @content = Content.find(params[:id])
  end

  def create
    @content = Content.new(params[:content])
    respond_to do |format|
      if @content.save
        format.html { redirect_to root_url, notice: 'Content was successfully created.' }
        format.json { render json: @content, status: :created, location: @content }
      else
        format.html { render action: "new" }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @content = Content.find(params[:id])
    respond_to do |format|
      if @content.update_attributes(params[:content])
        format.html { redirect_to root_url, notice: 'Content was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @content = Content.find(params[:id])
    @content.destroy

    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_content }
    end
  end

end
