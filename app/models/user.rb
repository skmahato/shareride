class User < ApplicationRecord
  has_many :vehicles
  has_many :rides
end
