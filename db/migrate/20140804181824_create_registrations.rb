class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.integer :user_id
      t.integer :tournament_id
      
      has_many :users
      has_many :tournaments

      t.timestamps
    end
  end
end
