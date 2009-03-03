class EventPhotosController < ApplicationController
  # GET /event_photos
  # GET /event_photos.xml
  def index
    @event_photos = EventPhoto.find(:all)

    respond_to do |format|
      format.html { render :layout => "application" }# index.html.erb
      format.xml  { render :xml => @event_photos }
    end
  end

  # GET /event_photos/1
  # GET /event_photos/1.xml
  def show
    @event_photo = EventPhoto.find(params[:id])

    respond_to do |format|
      format.html { render :layout => "application" }# show.html.erb
      format.xml  { render :xml => @event_photo }
    end
  end

  # GET /event_photos/new
  # GET /event_photos/new.xml
  def new
    @event_photo = EventPhoto.new

    respond_to do |format|
      format.html { render :layout => "application" }# new.html.erb
      format.xml  { render :xml => @event_photo }
    end
  end

  # GET /event_photos/1/edit
  def edit
    @event_photo = EventPhoto.find(params[:id])
    render :layout => "application"
  end

  # POST /event_photos
  # POST /event_photos.xml
  def create
    @event_photo = EventPhoto.new(params[:event_photo])

    respond_to do |format|
      if @event_photo.save
        flash[:notice] = 'EventPhoto was successfully created.'
        format.html { redirect_to(@event_photo) }
        format.xml  { render :xml => @event_photo, :status => :created, :location => @event_photo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @event_photo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /event_photos/1
  # PUT /event_photos/1.xml
  def update
    @event_photo = EventPhoto.find(params[:id])

    respond_to do |format|
      if @event_photo.update_attributes(params[:event_photo])
        flash[:notice] = 'EventPhoto was successfully updated.'
        format.html { redirect_to(@event_photo) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @event_photo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /event_photos/1
  # DELETE /event_photos/1.xml
  def destroy
    @event_photo = EventPhoto.find(params[:id])
    @event_photo.destroy

    respond_to do |format|
      format.html { redirect_to(event_photos_url) }
      format.xml  { head :ok }
    end
  end
end
