class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5 }
  validates :text, presence: true, length: { minimum: 10 }
  validates :image, presence: true

  belongs_to :author, foreign_key: 'author_id', class_name: 'User'
  belongs_to :category, class_name: 'Category'
  has_many :votes, dependent: :destroy
end
