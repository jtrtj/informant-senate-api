class Api::V1::MostRecentVoteController < ApplicationController
  def show
    vote = Vote.most_recent
    render json: VoteBlueprint.render(vote)
  end
end