class Recipe < ApplicationRecord
  has_many :steps
  has_many :photos, as: :holder
end
