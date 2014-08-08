class AddNewColumnToTournament < ActiveRecord::Migration
  def change
    add_column :tournaments, :additional_date, :string
  end
end
