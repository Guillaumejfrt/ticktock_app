class WatchesController < ApplicationController
  before_action :find_watch, only: [ :show, :edit, :update, :destroy ]

  def index
    @watches = Watch.all
  end

  def show
    @rental = Rental.new
  end

  def new
    @watch = Watch.new
  end

  def create
    @watch = Watch.new(watch_params)
    @watch.user = current_user
    if @watch.save
      redirect_to watch_path(@watch)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @watch.update(watch_params)
      redirect_to watch_path(@watch)
    else
      render :edit
    end
  end

  def destroy
    @watch.destroy
    redirect_to watches_path
  end

  private

  def find_watch
    @watch = Watch.find(params[:id])
  end

  def watch_params
    params.require(:watch).permit(:brand, :price, :mechanism, :gender, :description, :photo)
  end
end
