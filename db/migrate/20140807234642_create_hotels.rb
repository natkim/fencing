class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :date
      t.string :address
      t.boolean :paid
      t.string :confirmation
      t.string :reservation
      t.integer :tournament_id

      t.timestamps
    end
  end
end
