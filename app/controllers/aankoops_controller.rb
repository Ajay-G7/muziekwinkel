class AankoopsController < ApplicationController
  # GET /aankoops
  # GET /aankoops.xml
    layout 'standard'
  
  def index
    @aankoops = Aankoop.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @aankoops }
    end
  end

  # GET /aankoops/1
  # GET /aankoops/1.xml
  def show
    @aankoop = Aankoop.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @aankoop }
    end
  end

  # GET /aankoops/new
  # GET /aankoops/new.xml
  def new
    @aankoop = Aankoop.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @aankoop }
    end
  end

  # GET /aankoops/1/edit
  def edit
    @aankoop = Aankoop.find(params[:id])
  end

  # POST /aankoops
  # POST /aankoops.xml
  def create
    @aankoop = Aankoop.new(params[:aankoop])
    if @aankoop.prijs.nil?
      @aankoop.prijs = @aankoop.product.prijs
    end

    respond_to do |format|
      if @aankoop.save
        flash[:notice] = 'Aankoop was successfully created.'
        format.html { redirect_to(@aankoop) }
        format.xml  { render :xml => @aankoop, :status => :created, :location => @aankoop }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @aankoop.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /aankoops/1
  # PUT /aankoops/1.xml
  def update
    @aankoop = Aankoop.find(params[:id])

    respond_to do |format|
      if @aankoop.update_attributes(params[:aankoop])
        flash[:notice] = 'Aankoop was successfully updated.'
        format.html { redirect_to(@aankoop) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @aankoop.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /aankoops/1
  # DELETE /aankoops/1.xml
  def destroy
    @aankoop = Aankoop.find(params[:id])
    @aankoop.destroy

    respond_to do |format|
      format.html { redirect_to(aankoops_url) }
      format.xml  { head :ok }
    end
  end
end
