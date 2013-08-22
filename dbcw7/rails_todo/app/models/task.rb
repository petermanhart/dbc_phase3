class Task < ActiveRecord::Base
  attr_accessible :text
  belongs_to :list
end