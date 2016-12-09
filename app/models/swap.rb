class Swap < ApplicationRecord
  belongs_to :offer, class_name: "Item", foreign_key: "offer_id"
  belongs_to :request, class_name: "Item", foreign_key: "request_id"
end
