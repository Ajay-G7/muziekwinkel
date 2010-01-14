class KlantsController < ApplicationController
  # GET /klants
  # GET /klants.xml
    layout 'standard'
  
  def index
    @klants = Klant.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @klants }
    end
  end

  # GET /klants/1
  # GET /klants/1.xml
  def show
    @klant = Klant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @klant }
    end
  end

  # GET /klants/new
  # GET /klants/new.xml
  def new
    @klant = Klant.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @klant }
    end
  end

  # GET /klants/1/edit
  def edit
    @klant = Klant.find(params[:id])
  end

  # POST /klants
  # POST /klants.xml
  def create
    @klant = Klant.new(params[:klant])

    respond_to do |format|
      if @klant.save
        flash[:notice] = 'Klant was successfully created.'
        format.html { redirect_to(@klant) }
        format.xml  { render :xml => @klant, :status => :created, :location => @klant }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @klant.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /klants/1
  # PUT /klants/1.xml
  def update
    @klant = Klant.find(params[:id])

    respond_to do |format|
      if @klant.update_attributes(params[:klant])
        flash[:notice] = 'Klant was successfully updated.'
        format.html { redirect_to(@klant) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @klant.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /klants/1
  # DELETE /klants/1.xml
  def destroy
    @klant = Klant.find(params[:id])
    @klant.destroy

    respond_to do |format|
      format.html { redirect_to(klants_url) }
      format.xml  { head :ok }
    end
  end
end
