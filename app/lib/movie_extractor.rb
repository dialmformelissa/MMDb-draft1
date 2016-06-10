class MovieExtractor

  attr_reader :file 
  DEFAULT_FILE = "app/lib/data/imdb.csv"

  def initialize(file = DEFAULT_FILE)
    @file = file
  end

  def extract

    contents = CSV.open(file, headers: true, header_converters: :symbol, :encoding => 'ISO-8859-1')

    contents.each do |row|
      data = row.to_hash

       Movie.create(title: data[:title], director: data[:director], title_type: data[:title_type], release_date: data[:release_date])
      # save rows to database
    end
  end
end
