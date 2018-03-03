class Movie < ApplicationRecord
  belongs_to :playlist, optional: true
end
