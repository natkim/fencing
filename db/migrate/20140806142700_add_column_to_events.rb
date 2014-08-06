class AddColumnToEvents < ActiveRecord::Migration
  def change
    add_column :events, :tournament_id, :integer
  end
end
