class DesignationsController < ApplicationController
before_filter :authenticate_user!
  def index
    @designations = Designation.all
  end

  def show
    @designation = Designation.find(params[:id])
    #@salary  = Salary.sum(:basic)
    @salary = @designation.salaries.find(:all, :select => "SUM(basic)")
      logger.info "@7@&@&@&"+@salary.inspect 
  end

  def new
    @designation = Designation.new
    @salary = @designation.salaries.build
  end

  def create
    @designation = Designation.new(params[:designation])
    if @designation.save
      redirect_to @designation, :notice => "Successfully created designation."
    else
      render :action => 'new'
    end
  end

  def edit
    @designation = Designation.find(params[:id])
  end

  def update
    @designation = Designation.find(params[:id])
    if @designation.update_attributes(params[:designation])
      redirect_to @designation, :notice  => "Successfully updated designation."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @designation = Designation.find(params[:id])
    @designation.destroy
    redirect_to designations_url, :notice => "Successfully destroyed designation."
  end
end
