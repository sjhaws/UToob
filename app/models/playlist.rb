class Playlist < ApplicationRecord
  has_many :movies
  belongs_to :user
end
