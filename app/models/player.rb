class Player < ActiveRecord::Base
  has_many :apps

  belongs_to :movie
end
