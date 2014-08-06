class AddColumnsToTournaments < ActiveRecord::Migration
  def change
    add_column :tournaments, :title, :string
    add_column :tournaments, :paid, :boolean
    add_column :tournaments, :confirmation, :string
    add_column :tournaments, :type, :string
    add_column :tournaments, :event, :string
    add_column :tournaments, :date, :string
  end
end
