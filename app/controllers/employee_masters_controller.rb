class EmployeeMastersController < ApplicationController
before_filter :authenticate_user!
  # GET /employee_masters
  # GET /employee_masters.xml
  def index
    @employee_masters = EmployeeMaster.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @employee_masters }
    end
  end

  # GET /employee_masters/1
  # GET /employee_masters/1.xml
  def show
    @employee_master = EmployeeMaster.find(params[:id])
    @emp = EmployeeMaster.last.emp_id
     logger.info "@@fshof"+@emp.inspect
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @employee_master }
    end
  end

  # GET /employee_masters/new
  # GET /employee_masters/new.xml
  def new
    @emp = EmployeeMaster.all
    @empl  = @emp.last.emp_id
    @employee_master_last = @empl+1
    @employee_master = EmployeeMaster.new
    @employee_master.emp_id = @employee_master_last 
logger.info "Employee ki daetail :=>>"+@employee_master_last.inspect
    #@emp_code = EmployeeMaster.serial_number
    #@random_number = rand(2**256).to_s(9).ljust(8,'A')[0..5]
    #@purchase_order.order_no = @random_number
    #@array = (1..2000).map{ rand(max_rand_size) }.uniq
    #@employee_master.emp_id = @emp_code
    @resume = @employee_master.resumes.build
    @education = @employee_master.educations.build
    @emp_contact = @employee_master.emp_contacts.build
    @emp_immigration = @employee_master.emp_immigrations.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @employee_master }
    end
  end
  # GET /employee_masters/1/edit
  def edit
    @employee_master = EmployeeMaster.find(params[:id])
  end

  # POST /employee_masters
  # POST /employee_masters.xml
  def create    
    @employee_master = EmployeeMaster.new(params[:employee_master])
    #@employee_master.emp_id = @employee_master_last 

    respond_to do |format|
      if @employee_master.save
        format.html { redirect_to(@employee_master, :notice => 'Employee master was successfully created.') }
        format.xml  { render :xml => @employee_master, :status => :created, :location => @employee_master }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @employee_master.errors, :status => :unprocessable_entity }
      end
    end
  end



  def payslip
    @emp_name = EmployeeMaster.find(params[:id])
    render 'layouts/payslip'
  end
  # PUT /employee_masters/1
  # PUT /employee_masters/1.xml
  def update
    @employee_master = EmployeeMaster.find(params[:id])

    respond_to do |format|
      if @employee_master.update_attributes(params[:employee_master])
        format.html { redirect_to(@employee_master, :notice => 'Employee master was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @employee_master.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_masters/1
  # DELETE /employee_masters/1.xml
  def destroy
    @employee_master = EmployeeMaster.find(params[:id])
    @employee_master.destroy

    respond_to do |format|
      format.html { redirect_to(employee_masters_url) }
      format.xml  { head :ok }
    end
  end
end
