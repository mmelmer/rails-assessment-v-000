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

  private

    def show_params
      params.require(:show).permit (
        :date,
        :user_id,
        :venue_id,
        song_ids:[],
        songs_attributes: [:name] # <-- add album/original attributes?
      )
    end

end