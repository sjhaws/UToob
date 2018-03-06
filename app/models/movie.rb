class Movie < ApplicationRecord
  belongs_to :playlist, optional: true
  has_many :comments
  def date_conversion
  end
end
