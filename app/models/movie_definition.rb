class MovieDefinition < ActiveRecord::Base
  belongs_to :movie
  belongs_to :definition
end
