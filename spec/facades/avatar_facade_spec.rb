require 'rails_helper'

describe AvatarFacade do
  context 'nation_members' do
    it 'list members in nation' do
      fire_nation = AvatarFacade.new.nation_members('Fire+Nation')

      expect(fire_nation.count).to eq(97)
      expect(fire_nation.first.name).to eq('Azula')
      expect(fire_nation.last.name).to eq("Yon Rha's mother")
    end
  end
end