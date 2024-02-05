class Message < ApplicationRecord
  belongs_to :post
  attribute :content, :string
end
