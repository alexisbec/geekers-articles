class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }

  has_many :articles, dependent: :destroy, foreign_key: 'author_id', class_name: 'Article'
  has_many :votes, dependent: :destroy
end
