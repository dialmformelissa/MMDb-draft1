class Definition < ActiveRecord::Base
  has_many :movie_definitions
  has_many :definitions, through: :movie_definitions
end
