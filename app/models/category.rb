class Category < ApplicationRecord
=begin 
  CATEGORIES:
  Sports
  Videogames
  Technology
  Movies
  TV
  Entertainment
=end

  has_many :articles, foreign_key: 'category_id', class_name: 'Article'
end
