class DeleteType < ActiveRecord::Migration
  def change
    remove_column :tournaments, :type, :string
  end
end
