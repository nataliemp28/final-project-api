class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :image, :bio, :shoe_size, :dress_size, :items, :item_ids

  has_many :items

  def image
    object.image.url
  end
end
