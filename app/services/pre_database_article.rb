class PreDatabaseArticle
  attr_reader :title, :description, :url, :image_url, :source
  
  def initialize(data)
    @title = data[:title]
    @description = data[:description]
    @url = data[:url]
    @image_url = data[:urlToImage]
    @source = data[:source][:name]
  end
end