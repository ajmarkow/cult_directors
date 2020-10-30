class Director < ApplicationRecord
  has_many :movies
  has_many :facts
  validates_presence_of :name, :birthday, :summary
end
