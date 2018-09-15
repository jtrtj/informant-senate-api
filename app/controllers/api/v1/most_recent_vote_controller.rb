class Api::V1::MostRecentVoteController < ApplicationController
  def show
    vote = Vote.includes(:articles).order(created_at: :desc).limit(1)
    render json: VoteBlueprint.render(vote)
  end
end