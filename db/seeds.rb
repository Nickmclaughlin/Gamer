# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

data = Rails.root + "db/data/nfl.csv"

CSV.foreach(data, headers: true) do |row|

    new_hash = {}
    row.to_hash.each_pair do |k,v|
      new_hash.merge!( { k.downcase => v } )
    end

    Team.find_or_create_by(new_hash)
end
