class Api::V1::VotesController < ApplicationController
  def index
    votes = Vote.all
    render json: VoteBlueprint.render(votes)
  end
end
