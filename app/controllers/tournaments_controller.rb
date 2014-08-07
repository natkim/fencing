class TournamentsController < ApplicationController

  def index
    @tournaments = Tournament.all
  end

  def show
    @tournament = Tournament.find_by(id: params[:id])
  end

  def new
  end

  def create
    @tournament = Tournament.new
    @tournament.title = params[:title]
    @tournament.paid = params[:paid]
    @tournament.confirmation = params[:tournament]
    @tournament.event = params[:event]
    @tournament.type = params[:type]
    @tournament.location = params[:location]
    @tournament.date = params[:date]
    @tournament.hotel = params[:hotel]
    @tournament.travel = params[:travel]

    if @tournament.save
      redirect_to "/tournaments/#{ @tournament.id }"
    else
      render 'new'
    end
  end

  def edit
    @tournament = Tournament.find_by(id: params[:id])
  end

  def update
    @tournament = Tournament.find_by(id: params[:id])
    @tournament.location = params[:location]
    @tournament.date = params[:date]
    @tournament.hotel = params[:hotel]
    @tournament.travel = params[:travel]

    if @tournament.save
      redirect_to "/tournaments/#{ @tournament.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @tournament = Tournament.find_by(id: params[:id])
    @tournament.destroy


    redirect_to "/tournaments"
  end
end
