class Post < ApplicationRecord
    validates :description, presence: true
    validates :title, presence: true, length: { maximum: 150 }
    validates :keywords, presence: true
end
