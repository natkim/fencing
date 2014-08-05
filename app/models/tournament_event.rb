class TournamentEvent < ActiveRecord::Base
  has_many :tournaments
  has_many :events
end
