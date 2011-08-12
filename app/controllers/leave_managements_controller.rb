class LeaveManagementsController < ApplicationController
before_filter :authenticate_user!
  # GET /leave_managements
  # GET /leave_managements.xml
  autocomplete :employee_master, :emp_first_name

  def index
    @leave_managements = LeaveManagement.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @leave_managements }
    end
  end

  # GET /leave_managements/1
  # GET /leave_managements/1.xml
  def show
    @leave_management = LeaveManagement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @leave_management }
    end
  end

  # GET /leave_managements/new
  # GET /leave_managements/new.xml
  def new
    @leave_management = LeaveManagement.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @leave_management }
    end
  end

  # GET /leave_managements/1/edit
  def edit
    @leave_management = LeaveManagement.find(params[:id])
  end

  # POST /leave_managements
  # POST /leave_managements.xml
  def create
    @leave_management = LeaveManagement.new(params[:leave_management])

    respond_to do |format|
      if @leave_management.save
        format.html { redirect_to(@leave_management, :notice => 'Leave management was successfully created.') }
        format.xml  { render :xml => @leave_management, :status => :created, :location => @leave_management }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @leave_management.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /leave_managements/1
  # PUT /leave_managements/1.xml
  def update
    @leave_management = LeaveManagement.find(params[:id])

    respond_to do |format|
      if @leave_management.update_attributes(params[:leave_management])
        format.html { redirect_to(@leave_management, :notice => 'Leave management was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @leave_management.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /leave_managements/1
  # DELETE /leave_managements/1.xml
  def destroy
    @leave_management = LeaveManagement.find(params[:id])
    @leave_management.destroy

    respond_to do |format|
      format.html { redirect_to(leave_managements_url) }
      format.xml  { head :ok }
    end
  end
end
