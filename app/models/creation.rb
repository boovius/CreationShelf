class Creation < ApplicationRecord
  self.implicit_order_column = 'created_at'

  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'

  has_one :recipe
  has_many :photos, as: :holder
end
