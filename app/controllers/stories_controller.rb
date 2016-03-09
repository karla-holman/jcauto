class StoriesController < ApplicationController
  before_action :set_story, only: [:show]
  before_action :authorized_user?, only: [:user_attending]

  # Upcoming events
  def index
    @stories = Story.all
  end

  # Past events
  def show
    @stories = Story.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story
      @story = Story.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def story_params
      params.require(:story_id)
    end
end
