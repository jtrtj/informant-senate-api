class NewsApiConnection
  def self.conn
    Faraday.new(:url => 'https://newsapi.org/v2/') do | faraday |
      faraday.adapter Faraday.default_adapter
    end
  end
end