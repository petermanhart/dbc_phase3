class DropTotalKarmaFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :total_karma
  end
end
