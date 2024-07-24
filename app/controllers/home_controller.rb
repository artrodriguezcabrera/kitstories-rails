class HomeController < ApplicationController
  def index
    @federations = Federation.all
    @teams = Team.all
  end
end

