class Salesforce::ProjectsController < ApplicationController
  # GET /salesforce_projects
  # GET /salesforce_projects.xml
  def index
    @salesforce_projects = Salesforce::Project.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @salesforce_projects }
    end
  end

  # GET /salesforce_projects/1
  # GET /salesforce_projects/1.xml
  def show
    @project = Salesforce::Project.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project }
    end
  end

  # GET /salesforce_projects/new
  # GET /salesforce_projects/new.xml
  def new
    @project = Salesforce::Project.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @project }
    end
  end

  # GET /salesforce_projects/1/edit
  def edit
    @project = Salesforce::Project.find(params[:id])
  end

  # POST /salesforce_projects
  # POST /salesforce_projects.xml
  def create
    @project = Salesforce::Project.new(params[:project])

    respond_to do |format|
      if @project.save
        format.html { redirect_to(@project, :notice => 'Salesforce::Project was successfully created.') }
        format.xml  { render :xml => @project, :status => :created, :location => @project }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @project.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /salesforce_projects/1
  # PUT /salesforce_projects/1.xml
  def update
    @project = Salesforce::Project.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to(@project, :notice => 'Salesforce::Project was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @project.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /salesforce_projects/1
  # DELETE /salesforce_projects/1.xml
  def destroy
    @project = Salesforce::Project.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.html { redirect_to(salesforce_projects_url) }
      format.xml  { head :ok }
    end
  end
end
