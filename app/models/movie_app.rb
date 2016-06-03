class MovieApp < ActiveRecord::Base
  belongs_to :movie
  belongs_to :app
end
