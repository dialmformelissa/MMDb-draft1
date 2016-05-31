class DigitalFormat < ActiveRecord::Base
  has_many :apps
  has_many :players, through: :apps

  belongs_to :format
  belongs_to :movie
end
