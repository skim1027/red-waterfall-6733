require 'rails_helper'

RSpec.describe '/' do

  describe 'as a visitor' do
    describe 'when I visit /' do
      it 'has select field for nation and search for member button' do
        visit '/'

        expect(page).to have_select('nation')
        expect(page).to have_button('Search For Members')
      end


      it 'shows the number of people who live in the fire nation and detailed info for first 25 members' do
        visit '/'
        select('Fire Nation', from: 'nation')
        click_button('Search For Members')

        expect(current_path).to eq(search_path)

        
      end
    end
  end
end