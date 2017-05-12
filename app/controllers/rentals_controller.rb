class RentalsController < ApplicationController

  def show
    @rental = Rental.find(params[:id])
    @watch = Watch.find(params[:watch_id])
  end

  def create
    @rental = Rental.new(rental_params)
    @watch = Watch.find(params[:watch_id])
    @rental.watch = @watch
    @rental.user = current_user
    duration = (@rental.end_date.to_i - @rental.start_date.to_i)/3600
    @rental.rent_price = duration * @watch.price

    if @rental.save
      redirect_to watch_rental_path(@watch, @rental)
    else
      render "watches/show"
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date)
  end
end
