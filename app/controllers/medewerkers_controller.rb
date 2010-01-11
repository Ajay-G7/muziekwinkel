class MedewerkersController < ApplicationController
  # GET /medewerkers
  # GET /medewerkers.xml
  def index
    @medewerkers = Medewerker.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @medewerkers }
    end
  end

  # GET /medewerkers/1
  # GET /medewerkers/1.xml
  def show
    @medewerker = Medewerker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @medewerker }
    end
  end

  # GET /medewerkers/new
  # GET /medewerkers/new.xml
  def new
    @medewerker = Medewerker.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @medewerker }
    end
  end

  # GET /medewerkers/1/edit
  def edit
    @medewerker = Medewerker.find(params[:id])
  end

  # POST /medewerkers
  # POST /medewerkers.xml
  def create
    @medewerker = Medewerker.new(params[:medewerker])

    respond_to do |format|
      if @medewerker.save
        flash[:notice] = 'Medewerker was successfully created.'
        format.html { redirect_to(@medewerker) }
        format.xml  { render :xml => @medewerker, :status => :created, :location => @medewerker }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @medewerker.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /medewerkers/1
  # PUT /medewerkers/1.xml
  def update
    @medewerker = Medewerker.find(params[:id])

    respond_to do |format|
      if @medewerker.update_attributes(params[:medewerker])
        flash[:notice] = 'Medewerker was successfully updated.'
        format.html { redirect_to(@medewerker) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @medewerker.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /medewerkers/1
  # DELETE /medewerkers/1.xml
  def destroy
    @medewerker = Medewerker.find(params[:id])
    @medewerker.destroy

    respond_to do |format|
      format.html { redirect_to(medewerkers_url) }
      format.xml  { head :ok }
    end
  end
end
