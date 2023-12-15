class SearchController < ApplicationController
  def index
    nation = params[:nation].titleize
    conn = Faraday.new(url: 'https://last-airbender-api.fly.dev')

    response = conn.get("api/v1/characters?affiliation=#{nation}&perPage=all")

    json = JSON.parse(response.body, symbolize_names: true)

    @characters = json.map do |character_into|
      Character.new(character_into)
    end
    require 'pry'; binding.pry
  end
end