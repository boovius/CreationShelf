class User < ApplicationRecord
  has_many :creations
  has_many :recipes, through: :creations
end
