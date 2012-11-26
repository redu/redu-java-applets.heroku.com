
class AppletsController < ApplicationController
  skip_before_filter :ensure_user, :only => :include

  resource_description do
    name "Applets"
    path "/applets"
    formats ['json', 'xml']
    param :token, String, :desc => "The API token.", :required => true
  end

  api :GET, "applets", "Lists created objects"
  def index
    @applets = Applet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @applets }
    end
  end

  api :GET, "applets/:id", "Retreives the applet"
  error :code => 404, :desc => "Not Found"
  param :id, Fixnum, :desc => "Id do objeto de aprendizagem", :required => true
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

  api :POST, "applets/:id", "Creates the applet"
  error :code => 404, :desc => "Not Found"
  param :applet, Hash do
    param "title", String, :desc => "Object title"
    param "content", String, :desc => "Object HTML"
    param "style", String, :desc => "Object CSS"
    param "javascript", String, :descr => "Object JS"
    param "objective", String
    param "abstract", String
    param "curriculum", String
    param "theme", String
    param "author", String
    param "language", String
    param "country", String
    param "publisher", String
    param "description", String
    param "rightsholder", String
    param "submiter", String
    param "address", String
    param "license", String
    param "uri", String
    param "other_links", String
    param "applet_tyoe", String
    param "direct_url", String
  end
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
    @width = params.fetch(:width, 720)
    @height = params.fetch(:height, 340)

    respond_to do |format|
      format.html { render :action => :include, :layout => "clean" }
      format.json { render :json => @applet }
    end
  end
end
