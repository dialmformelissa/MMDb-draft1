class App < ActiveRecord::Base
  has_many :players
  
  belongs_to :movie
end
