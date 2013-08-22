class KarmaPoint < ActiveRecord::Base
  attr_accessible :user_id, :label, :value
  belongs_to :user

  validates :user, :presence => true
  validates :value, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
  validates :label, :presence => true

  after_save :add_to_user_total_points

  def add_to_user_total_points
    new_karma_points = user.total_karma_points + value
    user.update_attributes(total_karma_points: new_karma_points)
  end
end
