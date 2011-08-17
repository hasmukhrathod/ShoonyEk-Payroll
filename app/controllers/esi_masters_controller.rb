class EsiMastersController < ApplicationController
  can_edit_on_the_spot
  # GET /esi_masters
  # GET /esi_masters.xml
  def index
    @esi_masters = EsiMaster.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @esi_masters }
    end
  end

  # GET /esi_masters/1
  # GET /esi_masters/1.xml
  def show
    @esi_master = EsiMaster.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @esi_master }
    end
  end

  # GET /esi_masters/new
  # GET /esi_masters/new.xml
  def new
    @esi_master = EsiMaster.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @esi_master }
    end
  end

  # GET /esi_masters/1/edit
  def edit
    @esi_master = EsiMaster.find(params[:id])
  end

  # POST /esi_masters
  # POST /esi_masters.xml
  def create
    @esi_master = EsiMaster.new(params[:esi_master])

    respond_to do |format|
      if @esi_master.save
        format.html { redirect_to(@esi_master, :notice => 'Esi master was successfully created.') }
        format.xml  { render :xml => @esi_master, :status => :created, :location => @esi_master }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @esi_master.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /esi_masters/1
  # PUT /esi_masters/1.xml
  def update
    @esi_master = EsiMaster.find(params[:id])

    respond_to do |format|
      if @esi_master.update_attributes(params[:esi_master])
        format.html { redirect_to(@esi_master, :notice => 'Esi master was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @esi_master.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /esi_masters/1
  # DELETE /esi_masters/1.xml
  def destroy
    @esi_master = EsiMaster.find(params[:id])
    @esi_master.destroy

    respond_to do |format|
      format.html { redirect_to(esi_masters_url) }
      format.xml  { head :ok }
    end
  end
end
