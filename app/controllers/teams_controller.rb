require 'csv'
class TeamsController < ApplicationController
  def index
    @teams = Team.includes(:likes)
  end
end
