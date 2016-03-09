class Admin::StoriesController < AdminController
  before_action :set_story, only: [:show, :edit, :update, :destroy]

  # GET /cars
  # GET /cars.json
  def index
    @stories = Story.all.order(created_at: :desc)
  end

  # GET /cars/new
  def new
    @story = Story.new
  end

  # GET /cars/1/edit
  def edit
  end

  # POST /cars
  # POST /cars.json
  def create
    @story = Story.new(story_params)

    respond_to do |format|
      if @story.save
        flash[:success] = "Story was successfully created."
        format.html { redirect_to admin_stories_path }
        format.json { render :show, status: :created, location: @story }
      else
        format.html { render :new }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cars/1
  # PATCH/PUT /cars/1.json
  def update
    respond_to do |format|
      if @story.update(story_params)
        flash[:success] = "Story was successfully updated."
        format.html { redirect_to admin_stories_path }
        format.json { render :show, status: :ok, location: @story }
      else
        format.html { render :edit }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1
  # DELETE /cars/1.json
  def destroy
    @story.destroy
    respond_to do |format|
      flash[:success] = 'Story was successfully destroyed.'
      format.html { redirect_to admin_stories_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story
      @story = Story.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def story_params
      params.require(:story).permit(:name, :attachment, :description, :make_id, :model_id, :year, :vehicle)
    end
end
