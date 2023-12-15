class SearchController < ApplicationController
  def index
    nation = params[:nation].titleize
    @nation = nation.gsub('+', ' ')
    # conn = Faraday.new(url: 'https://last-airbender-api.fly.dev')

    # response = conn.get("api/v1/characters?affiliation=#{nation}&perPage=all")

    # json = JSON.parse(response.body, symbolize_names: true)

    # json = AvatarService.new.nation_members(nation)
    # @characters = json.map do |character_into|
    #   Character.new(character_into)
    # end
    @characters = AvatarFacade.new.nation_members(nation)
  end
end