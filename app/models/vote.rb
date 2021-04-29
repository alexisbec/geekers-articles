class Vote < ApplicationRecord
  validates :user_id, presence: true
  validates :article_id, uniqueness: { scope: :user_id }

  belongs_to :user, dependent: :destroy
  belongs_to :article, dependent: :destroy

  def self.most_voted
    total_votes = Vote.group(:article_id).count
    max_vote_id = total_votes.key(total_votes.values.max)
    if max_vote_id
      Article.find(max_vote_id)
    else
      Article.last
    end
  end
end
