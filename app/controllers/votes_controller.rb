class VotesController < ApplicationController
  def create
    @vote = current_user.votes.new(user_id: current_user.id, article_id: params[:article_id])

    if @vote.save
      redirect_to articles_path, notice: 'You voted this article.'
    else
      redirect_to articles_path, alert: 'You cannot vote this article.'
    end
  end

  def destroy
    vote = Vote.find_by(id: params[:id], user: current_user, article_id: params[:article_id])
    if vote
      vote.destroy
      redirect_to articles_path, notice: 'You unvoted this article.'
    else
      redirect_to articles_path, alert: 'You cannot unvote an article that you did not vote before.'
    end
  end

  private

  def vote_params_article
    params.permit(:article_id)
  end
end
