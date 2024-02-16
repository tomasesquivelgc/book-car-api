class API::V1::ReservationsController < ApplicationController
  before_action :set_reservation, only: [:destroy, :show, :update]
  private

  def set_reservation
    @reservation = Reservation.find params[:id]
  end

  def reservation_params
    params.require(:reservation).permit(:date, :city_id, :car_id, user_id)
  end
end
