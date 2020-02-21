class SearchController < ApplicationController
  def index
    connection = Faraday.new(url: 'http://openlibrary.org') do |faraday|
      faraday.headers
    end

    response = connection.get('/search.json?title=the+man+who+saw+everything')

    json = JSON.parse(response.body, symbolize_names: true)
    
    @book = json[:docs].first
  end
end
