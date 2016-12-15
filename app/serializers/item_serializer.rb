class ItemSerializer < ActiveModel::Serializer
  attributes :id, :image, :description, :condition, :size, :requests, :offers
  belongs_to :user
  has_many :requests
  has_many :offers

  def image
    object.image.url
  end
end
