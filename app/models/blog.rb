class Blog < ApplicationRecord
    validates :title, presence: true, uniqueness: true, length: { minimum: 4 }
  validates :content, presence: true, length: { minimum: 10 }
end
