class MovieDigitalFormat < ActiveRecord::Base
  belongs_to :movie
  belongs_to :digital_format
end
