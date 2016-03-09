class Admin::EventImagesController < AdminController
	before_action :load_edit_data

	def new
		@image = EventImage.new
	end

	def create
    @image = @event.event_images.new(event_image_params)
    if @image.save
    	flash[:success] = "Image added successfully!"
      render "index"
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      flash[:error] = "Image unable to be saved.\n"
      flash[:error] += @image.errors.full_messages.join("\n")
      render "new"
    end
  end

  def edit
  	@image = EventImage.find(params[:id])
  end

  # PATCH/PUT /cars/1
  # PATCH/PUT /cars/1.json
  def update
    @image = EventImage.find(params[:id])
    respond_to do |format|
      if @image.update(event_image_params)
        flash[:success] = "Event Image was successfully updated."
        format.html { redirect_to admin_event_event_images_path(@image.event) }
        format.json { render :show, status: :ok, location: @image }
      else
        format.html { render :edit }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  	EventImage.find(params[:id]).destroy
    flash[:success] = "Image deleted"
    render "index"
  end

  def index
    @event = Event.find(params[:event_id])
  end

	private

	def load_edit_data
    @event = Event.find(params[:event_id])
  end

  def event_image_params
	  params.require(:event_image).permit(:attachment, :attachment_file_name, :attachment_content_type, :attachment_file_size, :attachment_updated_at, :description)
	end
end
