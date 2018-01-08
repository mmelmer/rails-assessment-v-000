class ShowsController < ApplicationController

  def index
    @shows = Show.all
  end

  def show
    @show = Show.find_by(params[:id])
  end

end