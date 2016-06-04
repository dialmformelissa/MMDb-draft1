class MoviePlayer < ActiveRecord::Base
  belongs_to :movie
  belongs_to :player
end
