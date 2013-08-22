class Post < ActiveRecord::Base
  attr_accessible :title, :content, :is_published

  scope :recent, order: "created_at DESC", limit: 5

  before_save :titleize_title, :slugify

  validates_presence_of :title, :content

  private

  def slugify
    self.slug = "new-post"
  end

  def titleize_title
    self.title = title.titleize
  end
end