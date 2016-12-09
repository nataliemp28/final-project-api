class Item < ApplicationRecord
  belongs_to :user
  has_many :offers, class_name: "Swap", foreign_key: "offer_id"
  has_many :requests, class_name: "Swap", foreign_key: "request_id"
end
