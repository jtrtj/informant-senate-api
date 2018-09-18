class Api::V1::VotesController < ApplicationController
  def index
    votes = Vote.includes(:articles).where('created_at > ?', 30.days.ago)
    render json: VoteBlueprint.render(votes)
  end
end
