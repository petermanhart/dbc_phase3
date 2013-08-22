class Url < ActiveRecord::Base

  belongs_to :user

  attr_accessible :long_url

  before_create :shorten_url
  validates :long_url, :presence => true
  validates_format_of :long_url, :with => URI::regexp, :on => :create

  def self.all_short_urls
    Url.all.map { |url| url.short_url }
  end

  def shorten_url
    self.short_url = generate_random_key 
  end

  def generate_random_key
    begin 
      key = (('0'..'9').to_a+('a'..'z').to_a).sample(6).join('')
    end while Url.find_by_short_url(key)
    key
  end

end
