class SwapSerializer < ActiveModel::Serializer
  attributes :id, :offer_id, :request_id, :accepted, :request, :offer
  belongs_to :request
  belongs_to :offer
end
