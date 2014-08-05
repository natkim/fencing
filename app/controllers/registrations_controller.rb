class RegistrationsController < ApplicationController

  def index
    @registrations = Registration.all
  end

  def show
    @registration = Registration.find_by(id: params[:id])
  end

  def new
  end

  def create
    @registration = Registration.new
    @registration.user_id = params[:user_id]
    @registration.tournament_id = params[:tournament_id]

    if @registration.save
      redirect_to "/registrations/#{ @registration.id }"
    else
      render 'new'
    end
  end

  def edit
    @registration = Registration.find_by(id: params[:id])
  end

  def update
    @registration = Registration.find_by(id: params[:id])
    @registration.user_id = params[:user_id]
    @registration.tournament_id = params[:tournament_id]

    if @registration.save
      redirect_to "/registrations/#{ @registration.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @registration = Registration.find_by(id: params[:id])
    @registration.destroy


    redirect_to "/registrations"
  end
end
