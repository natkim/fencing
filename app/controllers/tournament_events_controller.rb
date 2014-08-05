class TournamentEventsController < ApplicationController

  def index
    @tournament_events = TournamentEvent.all
  end

  def show
    @tournament_event = TournamentEvent.find_by(id: params[:id])
  end

  def new
  end

  def create
    @tournament_event = TournamentEvent.new
    @tournament_event.tournament_id = params[:tournament_id]
    @tournament_event.event_id = params[:event_id]

    if @tournament_event.save
      redirect_to "/tournament_events/#{ @tournament_event.id }"
    else
      render 'new'
    end
  end

  def edit
    @tournament_event = TournamentEvent.find_by(id: params[:id])
  end

  def update
    @tournament_event = TournamentEvent.find_by(id: params[:id])
    @tournament_event.tournament_id = params[:tournament_id]
    @tournament_event.event_id = params[:event_id]

    if @tournament_event.save
      redirect_to "/tournament_events/#{ @tournament_event.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @tournament_event = TournamentEvent.find_by(id: params[:id])
    @tournament_event.destroy


    redirect_to "/tournament_events"
  end
end
