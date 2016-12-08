class ItemSerializer < ActiveModel::Serializer
  attributes :id, :image, :description, :condition, :size
  has_one :user
end
