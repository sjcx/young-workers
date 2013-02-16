class SubmissionsController < ApplicationController
   
  def index
    @submissions = Submission.all(:order => "created_at DESC")
  end
  
  def new
    @submission = Submission.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @submission  }
    end
  end
  
  def edit
    @submission = Submission.find(params[:id])
  end

  def create
    @submission = Submission.new(params[:submission])
    respond_to do |format|
      if @submission.save
        format.html { redirect_to root_url, notice: 'Submission was successfully created.' }
        format.json { render json: @submission, status: :created, location: @submission }
      else
        format.html { render action: "new" }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @submission = Submission.find(params[:id])
    respond_to do |format|
      if @submission.update_attributes(params[:content])
        format.html { redirect_to root_url, notice: 'Submission was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @submission = Submission.find(params[:id])
    @submission.destroy

    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_submission }
    end
  end

  
end
