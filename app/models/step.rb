class Step < ApplicationRecord
  belongs_to :recipe
  has_many :photos, as: :holder

  def attributes
    super.merge({
      'photos': photos,
    })
  end
end
