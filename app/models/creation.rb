class Creation < ApplicationRecord
  self.implicit_order_column = 'created_at'

  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'

  has_one :recipe
  has_many :photos, as: :holder
  has_one :header_photo, class_name: 'Photo', as: :holder

  def attributes
    attrs = super.merge({
      'photos': photos,
      'header_photo': header_photo
    })
    attrs.delete('header_photo_id')
    attrs
  end

  def create_header_photo(url:)
    ActiveRecord::Base.transaction do
      p = Photo.create!(url: url, holder: self)
      self.update_attributes!(header_photo_id: p.id)
    end
  end

  def set_header_photo(photo:)
    self.update_attributes!(header_photo_id: photo.id)
  end
end
