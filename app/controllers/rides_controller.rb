class RidesController < ApplicationController

  before_action :set_ride, only: [:show, :edit, :update, :destroy]
  before_action :confirm_logged_in
  before_action :confirm_ride_owner, except: [:new, :create, :show]

  def create
    @ride = Ride.new(ride_params)

    @ride.user_id = current_user.id

    if @ride.save
      flash[:notice] = "Ride successfully created!"
      redirect_to(ride_path(@ride.id))
    else
      render('new')
    end
  end

  def new
    @ride = Ride.new
  end

  def edit
  end

  def show
  end

  def update
    if @ride.update(ride_params)
      flash[:notice] = "Ride successfully updated!"
      redirect_to(ride_path(@ride.id))
    else
      render("edit")
    end
  end

  def destroy
    @ride.destroy
    flash[:notice] = "Ride successfully deleted!"
    redirect_to("/rides")
  end

  private
    def ride_params
      params.require(:ride).permit(:seat_type, :destination, :start_point)
    end

    def set_ride
      @ride = Ride.find(params[:id])
    end

    def confirm_ride_owner
      unless current_user && current_user.id == @ride.user.id
        not_found
      end
    end

end
