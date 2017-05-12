class WatchesController < ApplicationController
  before_action :find_watch, only: [ :show ]

  def index
    @watches = Watch.all
  end

  def show
  end

  def new
    @watch = Watch.new
  end

  def create
    @watch = Watch.new(watch_params)
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

  # def destroy
  #   @watch.destroy
  #   redirect_to pages#dashboard
  # end

  private

  def find_watch
    @watch = Watch.find(params[:id])
  end

  def watch_params
    params.require(:watch).permit(:brand, :price, :mechanism, :gender, :description, :photos)
  end
end
