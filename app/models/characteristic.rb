class Characteristic < ApplicationRecord
  has_many :turns
  has_many :features
end
