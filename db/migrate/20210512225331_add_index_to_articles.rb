class AddIndexToArticles < ActiveRecord::Migration[6.1]
  def change
    add_index(:articles, [:author_id, :category_id])
  end
end
