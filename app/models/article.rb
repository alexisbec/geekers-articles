class Article < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true

  belongs_to :author, class_name: 'User'
  belongs_to :category, class_name: 'Category'
  has_many  :votes, dependent: :destroy
end
