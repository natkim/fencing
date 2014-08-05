class Tournament < ActiveRecord::Base
  belongs_to :registration
  belongs_to :tournament_event
end
