class User < ActiveRecord::Base

  has_many :urls
  
  include BCrypt

  def self.authenticate(email, password)
    current_user = User.where("email = ?", email).first
    current_user.password == password ? current_user.id : nil
  end

  def password=(password)
    update_attribute(:password_hash, Password.create(password))
  end

  def name
    self.first_name.capitalize + " " + self.last_name.capitalize
  end

  def password
    Password.new(password_hash)
  end

  def self.find_urls(id)
    user = User.find(id)
    user.urls.sort_by! { |url| url.created_at }
  end

end
