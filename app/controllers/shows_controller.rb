class ShowsController < ApplicationController

  def index
    @shows = Show.all
  end

  def show
    @show = Show.find_by(params[:id])
  end

  def new
    @show = Show.new
  end

  def edit
    @show = Show.find(params[:id])
  end

end