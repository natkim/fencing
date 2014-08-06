class CreateTournamentEvents < ActiveRecord::Migration
  def change
    create_table :tournament_events do |t|
      t.integer :tournament_id
      t.integer :event_id
      
      has_many :events
      has_many :tournaments

      t.timestamps
    end
  end
end
