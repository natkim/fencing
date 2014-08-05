class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :result
      t.string :weapons
      t.string :division

      t.timestamps
    end
  end
end
