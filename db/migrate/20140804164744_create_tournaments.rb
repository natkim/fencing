class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :location
      t.string :date
      t.string :hotel
      t.string :travel
      t.string :title
      t.boolean :paid
      t.string :confirmation
      t.string :type
      t.string :event
      t.integer :user_id
      
      t.timestamps
    end
  end
end
