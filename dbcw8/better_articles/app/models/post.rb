class Post < ActiveRecord::Base
  has_and_belongs_to_many :tags
  belongs_to :category

  attr_accessible :title, :content, :url

  validates_presence_of :title, :content, :url
end
