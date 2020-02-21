class SearchController < ApplicationController
  def index
    # connection = Faraday.new(url: 'http://openlibrary.org') do |faraday|
    #   faraday.headers
    # end
    #
    # response = connection.get('/search.json?title=the+man+who+saw+everything')
    #
    # json = JSON.parse(response.body, symbolize_names: true)
    #
    # @book = json[:docs].first

    connection_2 = Faraday.new(url: 'https://api.nytimes.com') do |faraday_2|
      faraday_2.headers['X-API-KEY'] = ENV['ny_times_api_key']
    end

    response_2 = connection_2.get('/svc/books/v3/reviews.json?title=the+man+who+saw+everything&api-key=OqyWnYC6nGAw1uH80Axu3b0asrpLXSCu')

    json_2 = JSON.parse(response.body, symbolize_names: true)

    binding.pry
  end
end
