require 'csv'
class TeamsController < ApplicationController
  def index
    @data = Rails.root + "db/data/nfl.csv"
    @teams = CSV.read(@data, headers: true)
  end
end
