
class AppletsController < ApplicationController
  skip_before_filter :ensure_user, :only => :include

  # GET /applets
  # GET /applets.json
  def index
    @applets = Applet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @applets }
    end
  end

  # GET /applets/1
  # GET /applets/1.json
  def show
    @applet = Applet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @applet }
    end
  end

  # GET /applets/new
  # GET /applets/new.json
  def new
    @applet = Applet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @applet }
    end
  end

  # GET /applets/1/edit
  def edit
    @applet = Applet.find(params[:id])
  end

  # POST /applets
  # POST /applets.json
  def create
    @applet = Applet.new(params[:applet])

    respond_to do |format|
      if @applet.save
        format.html { redirect_to @applet, :notice => 'Applet was successfully created.' }
        format.json { render :json => @applet, :status => :created, :location => @applet }
      else
        format.html { render :action => "new" }
        format.json { render :json => @applet.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /applets/1
  # PUT /applets/1.json
  def update
    @applet = Applet.find(params[:id])

    respond_to do |format|
      if @applet.update_attributes(params[:applet])
        format.html { redirect_to @applet, :notice => 'Applet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @applet.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /applets/1
  # DELETE /applets/1.json
  def destroy
    @applet = Applet.find(params[:id])
    @applet.destroy

    respond_to do |format|
      format.html { redirect_to applets_url }
      format.json { head :no_content }
    end
  end

  def include
    @applet = Applet.find(params[:id])

    respond_to do |format|
      format.html { render :action => :include, :layout => "clean" }
      format.json { render :json => @applet }
    end
  end
end
