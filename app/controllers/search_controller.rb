class SearchController < ApplicationController
  def index
    conn = Faraday.new(url: 'https://last-airbender-api.fly.dev')

    response = conn.get('api/v1/characters?affiliation=Fire+Nation&perPage=all')

    json = JSON.parse(response.body, symbolize_names: true)
    require 'pry'; binding.pry
  end
end