class Movie < ApplicationRecord
    include HTTParty
    base_uri 'http://www.omdbapi.com/?apikey=c732a291&'

    def self.generate(api_id)
    movie = find_by api_id: api_id
    return movie unless movie.nil?

    response = get "/#{api_id}"
    poster = "http://img.omdbapi.com/?apikey=c732a291&"

    create!(title: response['title'],
            genre: response['genre'],
            year: 0,
            synopis: response['synopis'],
            picture: poster,
            add_to_favs: response['title']
            api_id: api_id)
  end
end
