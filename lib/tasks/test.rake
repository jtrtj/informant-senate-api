namespace :test do
  desc "Add 20 recent votes to db"
  task add_20: :environment do
    start_count = Vote.count
    new_votes = SavePropublicaVotesResponseToDatabase.save_recent_votes
    puts "#{Vote.count - start_count} new votes added to the database #{Time.now}"
    new_votes = new_votes.compact
    new_votes.each do | vote |
      SaveNewsApiResponseToArticles.new(vote).save_news_to_article
      puts "#{vote.articles.count} articles attached to #{vote.number}."
    end
  end
end