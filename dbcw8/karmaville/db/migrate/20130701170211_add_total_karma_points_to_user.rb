class AddTotalKarmaPointsToUser < ActiveRecord::Migration
  def change
    add_column :users, :total_karma_points, :integer, :force => true
  end
end
