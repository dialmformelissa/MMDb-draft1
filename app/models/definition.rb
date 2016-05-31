class Definition < ActiveRecord::Base
  belongs_to :digitalformats
  belongs_to :movie
end
