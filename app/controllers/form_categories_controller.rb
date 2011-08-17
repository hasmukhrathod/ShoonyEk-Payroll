class FormCategoriesController < ApplicationController
  # GET /form_categories
  # GET /form_categories.xml
  def index
    @form_categories = FormCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @form_categories }
    end
  end

  # GET /form_categories/1
  # GET /form_categories/1.xml
  def show
    @form_category = FormCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @form_category }
    end
  end

  # GET /form_categories/new
  # GET /form_categories/new.xml
  def new
    @form_category = FormCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @form_category }
    end
  end

  # GET /form_categories/1/edit
  def edit
    @form_category = FormCategory.find(params[:id])
  end

  # POST /form_categories
  # POST /form_categories.xml
  def create
    @form_category = FormCategory.new(params[:form_category])

    respond_to do |format|
      if @form_category.save
        format.html { redirect_to(@form_category, :notice => 'Form category was successfully created.') }
        format.xml  { render :xml => @form_category, :status => :created, :location => @form_category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @form_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /form_categories/1
  # PUT /form_categories/1.xml
  def update
    @form_category = FormCategory.find(params[:id])

    respond_to do |format|
      if @form_category.update_attributes(params[:form_category])
        format.html { redirect_to(@form_category, :notice => 'Form category was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @form_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /form_categories/1
  # DELETE /form_categories/1.xml
  def destroy
    @form_category = FormCategory.find(params[:id])
    @form_category.destroy

    respond_to do |format|
      format.html { redirect_to(form_categories_url) }
      format.xml  { head :ok }
    end
  end
end
