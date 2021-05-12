class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { in: 2..15 }
  validates :priority, presence: true, numericality: { only_integer: true, greater_than: 0 }

  has_many :articles, foreign_key: 'category_id', class_name: 'Article'

  scope :priority_sorted, -> { order(priority: :asc) }
end
