require 'rails_helper'

RSpec.describe '/' do

  describe 'as a visitor' do
    describe 'when I visit /' do
      it 'has select field for nation and search for member button' do
        visit '/'

        expect(page).to have_select('nation')
        expect(page).to have_button('Search For Members')
      end


      it 'shows the number of people who live in the fire nation and detailed info for first 25 members', :vcr do
        visit '/'
        select('Fire Nation', from: 'nation')
        click_button('Search For Members')

        expect(current_path).to eq(search_path)

        expect(page).to have_content('Name: Azula')
        expect(page).to have_content('Allies: Ozai, Zuko')
        expect(page).to have_content('Enemies: Iroh, Zuko, Kuei, Long Feng, Mai, Ty Lee, Ursa')
        expect(page).to have_content("Affiliations: Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
      end
    end
  end
end