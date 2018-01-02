class HomeController < ApplicationController

  def index
    @shows = Show.all
  end

end