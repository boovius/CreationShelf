class Recipe < ApplicationRecord
  has_many :steps
  has_many :photos, as: :holder
  belongs_to :creation
  accepts_nested_attributes_for :photos, :steps

  def attributes
    super.merge({
      'steps': steps,
      'photos': photos,
    })
  end
end
