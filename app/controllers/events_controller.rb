class EventsController < ApplicationController
  # GET /events
  # GET /events.xml
  def index
    @events = Event.find_future
    respond_to do |format|
      format.html { render :action => "index", :layout => "application" }# index.html.erb
      format.xml  { render :xml => @events }
    end
  end
  
  def admin
    @events = Event.find(:all)
    respond_to do |format|
      format.html { render :action => "admin", :layout => false }# index.html.erb
    end
  end
  
  caches_embedded :index_future, :ttl => 1.minute
  
  def index_future
    @events = Event.find_future

    respond_to do |format|
      format.html { render :action => "index" } # index.html.erb
      format.embedded { render :action => "index" }
      format.xml  { render :xml => @events }
    end
  end

  # GET /events/1
  # GET /events/1.xml
  def show
    @event = Event.find(params[:id])

    respond_to do |format|
      format.html { render :action => "show", :layout => "application" } # show.html.erb
      format.xml  { render :xml => @event }
    end
  end

  # GET /events/new
  # GET /events/new.xml
  def new
    @event = Event.new

    respond_to do |format|
      format.html { render :action => "new", :layout => false }# new.html.erb
      format.xml  { render :xml => @event }
    end
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
    
    respond_to do |format|
      format.html { render :action => "edit", :layout => false }
    end
  end

  # POST /events
  # POST /events.xml
  def create
    @event = Event.new(params[:event])

    respond_to do |format|
      if @event.save
        flash[:notice] = 'Event was successfully created.'
        format.html { redirect_to(@event) }
        format.xml  { render :xml => @event, :status => :created, :location => @event }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.xml
  def update
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        flash[:notice] = 'Event was successfully updated.'
        format.html { redirect_to(@event) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.xml
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to(events_url) }
      format.xml  { head :ok }
    end
  end
end
