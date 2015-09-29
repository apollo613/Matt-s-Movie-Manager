class Movie < ActiveRecord::Base
  validates :title, length: {minimum: 1, maximum: 150},
                    presence: true
  validates :length, inclusion: 0..500,
                    presence: true
  validates :year, inclusion: 1800..2100,
                    presence: true
  validates :rating, inclusion: 1..5,
                    presence: true
  validates :format, presence: true
end