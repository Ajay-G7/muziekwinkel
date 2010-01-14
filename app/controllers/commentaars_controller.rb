class CommentaarsController < ApplicationController
  # GET /commentaars
  # GET /commentaars.xml
    layout 'standard'
  
  def index
    @commentaars = Commentaar.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @commentaars }
    end
  end

  # GET /commentaars/1
  # GET /commentaars/1.xml
  def show
    @commentaar = Commentaar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @commentaar }
    end
  end

  # GET /commentaars/new
  # GET /commentaars/new.xml
  def new
    @commentaar = Commentaar.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @commentaar }
    end
  end

  # GET /commentaars/1/edit
  def edit
    @commentaar = Commentaar.find(params[:id])
  end

  # POST /commentaars
  # POST /commentaars.xml
  def create
    @commentaar = Commentaar.new(params[:commentaar])

    respond_to do |format|
      if @commentaar.save
        flash[:notice] = 'Commentaar was successfully created.'
        format.html { redirect_to(@commentaar) }
        format.xml  { render :xml => @commentaar, :status => :created, :location => @commentaar }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @commentaar.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /commentaars/1
  # PUT /commentaars/1.xml
  def update
    @commentaar = Commentaar.find(params[:id])

    respond_to do |format|
      if @commentaar.update_attributes(params[:commentaar])
        flash[:notice] = 'Commentaar was successfully updated.'
        format.html { redirect_to(@commentaar) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @commentaar.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /commentaars/1
  # DELETE /commentaars/1.xml
  def destroy
    @commentaar = Commentaar.find(params[:id])
    @commentaar.destroy

    respond_to do |format|
      format.html { redirect_to(commentaars_url) }
      format.xml  { head :ok }
    end
  end
end
