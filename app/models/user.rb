class User < ApplicationRecord
  validates :name, presence: true, length: { in: 3..15 }, uniqueness: true

  has_many :articles, dependent: :destroy, foreign_key: 'author_id', class_name: 'Article'
  has_many :votes, dependent: :destroy
end
