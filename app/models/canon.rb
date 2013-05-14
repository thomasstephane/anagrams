class Canon < ActiveRecord::Base

  has_many :words

  validates :canon, presence: true
  # Remember to create a migration!
end
