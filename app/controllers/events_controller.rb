class EventsController < ApplicationController
  before_action :set_event, only: [:show]
  before_action :authorized_user?, only: [:user_attending]

  def index
    @events = Event.all.where("event_date > ?", Date.today).order("event_date DESC")
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  def event_rsvp

    @user = spree_current_user
    @event = Event.find(event_params)

    respond_to do |format|
      if @user.events << @event
        format.html { redirect_to events_path, notice: 'We look forward to seeing you there!' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render events_path, notice: 'Sorry, we could not register you at this time.'  }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event_id)
    end
end
