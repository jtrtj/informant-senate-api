namespace :test do
  desc "Add 20 recent votes to db"
  task add_20: :environment do
    start_count = Vote.count
    SavePropublicaVotesResponseToDatabase.save_recent_votes
    puts "#{Vote.count - start_count} new votes added to the database #{Time.now}"
  end
end