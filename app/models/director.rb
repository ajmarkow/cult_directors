class Director < ApplicationRecord
  has_many :movies
  has_many :facts
end
