require 'rails_helper'

describe AvatarService do
  describe 'nation_members' do
    it 'returns nation characters', :vcr do
      fire_nation = AvatarService.new.nation_members('Fire+Nation')

      expect(fire_nation).to be_a Array
      expect(fire_nation.first).to be_a Hash

      fire_nation.each do |each_person|
        expect(each_person).to have_key(:_id)
        expect(each_person[:_id]).to be_a(String)

        expect(each_person).to have_key(:allies)
        expect(each_person[:allies]).to be_an(Array)

        expect(each_person).to have_key(:enemies)
        expect(each_person[:enemies]).to be_an(Array)

        if each_person.key?(:photoUrl)
          expect(each_person).to have_key(:photoUrl)
          expect(each_person[:photoUrl]).to be_a(String)
        end

        expect(each_person).to have_key(:name)
        expect(each_person[:name]).to be_a(String)

        expect(each_person).to have_key(:affiliation)
        expect(each_person[:affiliation]).to be_a(String)
      end
    end
  end
end