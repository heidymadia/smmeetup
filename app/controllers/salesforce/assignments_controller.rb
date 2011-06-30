class Salesforce::AssignmentsController < ApplicationController
  # GET /salesforce_assignments
  # GET /salesforce_assignments.xml
  def index
    @salesforce_assignments = Salesforce::Assignment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @salesforce_assignments }
    end
  end

  # GET /salesforce_assignments/1
  # GET /salesforce_assignments/1.xml
  def show
    @assignment = Salesforce::Assignment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @assignment }
    end
  end

  # GET /salesforce_assignments/new
  # GET /salesforce_assignments/new.xml
  def new
    @assignment = Salesforce::Assignment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @assignment }
    end
  end

  # GET /salesforce_assignments/1/edit
  def edit
    @assignment = Salesforce::Assignment.find(params[:id])
  end

  # POST /salesforce_assignments
  # POST /salesforce_assignments.xml
  def create
    @assignment = Salesforce::Assignment.new(params[:assignment])

    respond_to do |format|
      if @assignment.save
        format.html { redirect_to(@assignment, :notice => 'Salesforce::Assignment was successfully created.') }
        format.xml  { render :xml => @assignment, :status => :created, :location => @assignment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @assignment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /salesforce_assignments/1
  # PUT /salesforce_assignments/1.xml
  def update
    @assignment = Salesforce::Assignment.find(params[:id])

    respond_to do |format|
      if @assignment.update_attributes(params[:assignment])
        format.html { redirect_to(@assignment, :notice => 'Salesforce::Assignment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @assignment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /salesforce_assignments/1
  # DELETE /salesforce_assignments/1.xml
  def destroy
    @assignment = Salesforce::Assignment.find(params[:id])
    @assignment.destroy

    respond_to do |format|
      format.html { redirect_to(salesforce_assignments_url) }
      format.xml  { head :ok }
    end
  end
end
