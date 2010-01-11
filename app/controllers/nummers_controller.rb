class NummersController < ApplicationController
  # GET /nummers
  # GET /nummers.xml
  def index
    @nummers = Nummer.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @nummers }
    end
  end

  # GET /nummers/1
  # GET /nummers/1.xml
  def show
    @nummer = Nummer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @nummer }
    end
  end

  # GET /nummers/new
  # GET /nummers/new.xml
  def new
    @nummer = Nummer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @nummer }
    end
  end

  # GET /nummers/1/edit
  def edit
    @nummer = Nummer.find(params[:id])
  end

  # POST /nummers
  # POST /nummers.xml
  def create
    @nummer = Nummer.new(params[:nummer])

    respond_to do |format|
      if @nummer.save
        flash[:notice] = 'Nummer was successfully created.'
        format.html { redirect_to(@nummer) }
        format.xml  { render :xml => @nummer, :status => :created, :location => @nummer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @nummer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /nummers/1
  # PUT /nummers/1.xml
  def update
    @nummer = Nummer.find(params[:id])

    respond_to do |format|
      if @nummer.update_attributes(params[:nummer])
        flash[:notice] = 'Nummer was successfully updated.'
        format.html { redirect_to(@nummer) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @nummer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /nummers/1
  # DELETE /nummers/1.xml
  def destroy
    @nummer = Nummer.find(params[:id])
    @nummer.destroy

    respond_to do |format|
      format.html { redirect_to(nummers_url) }
      format.xml  { head :ok }
    end
  end
end
