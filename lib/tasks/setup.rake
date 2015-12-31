namespace :setup do
  desc "Run basic setup commands for the API"
  task new: :environment do
    `rake db:seed`
  end
end
