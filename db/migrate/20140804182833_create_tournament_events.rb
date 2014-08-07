class CreateTournamentEvents < ActiveRecord::Migration
  def change
    create_table :tournament_events do |t|
      t.integer :tournament_id
      t.integer :event_id

      t.timestamps
    end
  end
end
