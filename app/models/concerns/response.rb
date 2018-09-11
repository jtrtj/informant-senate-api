module Response
  def json_response(object, status = :ok)
    render json: VoteSerializer.new(object), status: status
  end
end