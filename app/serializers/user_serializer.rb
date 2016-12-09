class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :image

  def image
    object.image.url

  end
end
