class SearchController < ApplicationController
  def index
    connection = Faraday.new(url: 'http://openlibrary.org') do |faraday|
      faraday.headers
      binding.pry
    end

    response = connection.get('/search.json?title=the+man+who+saw+everything')
  end
end
