class Api::V1::VotesController < ApplicationController
  def index
    @votes = Vote.all
    json_response(@votes)
  end
end
