class NewsApiEverythingRequest
  def self.search(query)
    response = make_request(query)
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def self.make_request(query)
    conn.get do | req |
      req.url 'everything'
      req.params['q'] = query
      req.params['apiKey'] = ENV['news_api_key']
    end
  end

  def self.conn
    NewsApiConnection.conn
  end
end