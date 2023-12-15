class SearchController < ApplicationController
  def index
    nation = params[:nation].titleize
    @nation = nation.gsub('+', ' ')
    @characters = AvatarFacade.new.nation_members(nation)
  end
end