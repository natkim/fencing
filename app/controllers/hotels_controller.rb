class HotelsController < ApplicationController

  def index
    @hotel = Hotel.all
  end

  def show
    @hotel = Hotel.find_by(id: params[:id])
  end

  def new
  end

  def create
    @hotel = Hotel.new
    @hotel.name = params[:name]
    @hotel.date = params[:date]
    @hotel.address = params[:address]
    @hotel.paid = params[:paid]
    @hotel.confirmation = params[:confirmation]
    @hotel.reservation = params[:reservation]
    @hotel.tournament_id = params[:tournament_id]
   
    if @hotel.save
      redirect_to "/hotels/#{ @hotel.id }"
    else
      render 'new'
    end
  end

  def edit
    @hotel = Hotel.find_by(id: params[:id])
  end

  def update
    @hotel = Hotel.find_by(id: params[:id])
    @hotel.name = params[:name]
    @hotel.date = params[:date]
    @hotel.address = params[:address]
    @hotel.paid = params[:paid]
    @hotel.confirmation = params[:confirmation]
    @hotel.reservation = params[:reservation]
    @hotel.tournament_id = params[:tournament_id]

    if @hotel.save
      redirect_to "/hotels/#{ @hotel.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @hotel = Hotel.find_by(id: params[:id])
    @hotel.destroy


    redirect_to "/hotels"
  end
end
