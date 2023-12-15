class AvatarFacade

  def nation_members(nation)
    search_nation = AvatarService.new.nation_members(nation)
    characters = search_nation.map do |character_into|
      Character.new(character_into)
    end
  end
end