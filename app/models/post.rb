class Post < ApplicationRecord
  validates :title, presence: true
    validates :description, presence: true , length: { maximum: 150 }
    validates :keywords, presence: true
  has_many :messages,dependent: :destroy
end
