namespace :import do
  task movies: :environment do
    counter = 0

    CSV.foreach("lib/seeds/movies.csv") do |row|
      movie = Movie.create(title: "title", title_type: "titletype", director: "director", release_date: "date")
      puts "#{title} - #{movie.errors.full_messages.join (", ")}" if movie.errors.any? 
      counter += 1 if movie.persisted?
      end
    puts "Imported #{counter movies}"
  end
end