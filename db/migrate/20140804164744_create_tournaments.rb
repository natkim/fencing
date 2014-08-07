class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :location
      t.string :date
      t.string :hotel
      t.string :travel
      
      t.timestamps
    end
  end
   belongs_to :registration
   belongs_to :tournament_events
end
