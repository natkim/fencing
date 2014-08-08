class AddAdditionalEventToTournament < ActiveRecord::Migration
  def change
    add_column :tournaments, :additional_event, :string
  end
end
