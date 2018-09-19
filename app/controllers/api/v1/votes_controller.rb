class Api::V1::VotesController < ApplicationController
  def index
    votes = Vote.last_thirty_days
    render json: VoteBlueprint.render(votes)
  end
end
