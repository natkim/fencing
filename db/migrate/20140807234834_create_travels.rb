class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.boolean :paid
      t.string :confirmation
      t.string :airline
      t.string :flight
      t.string :destination
      t.integer :tournament_id

      t.timestamps
    end
  end
end
