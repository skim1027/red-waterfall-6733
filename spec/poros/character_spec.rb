require 'rails_helper'

RSpec.describe Character do
  it 'exist' do
    attr = {
      name: 'Azula',
      allies: ['Ozai, Zuko'],
      enemies: ['Iroh, Zuko, Kuei, Long Feng, Mai, Ty Lee, Ursa'],
      affiliation: 'Fire Nation',
      photoUrl: "https://address.com"
    }

    attr2 = {
      name: 'Momo',
      allies: [],
      enemies: [],
      affiliation: 'Earth Kingdom',
      photoUrl: 'https://test.com'
    }

    char = Character.new(attr)
    char2 = Character.new(attr2)

    expect(char).to be_a Character
    expect(char.name).to eq('Azula')
    expect(char.allies).to eq('Ozai, Zuko')
    expect(char.enemies).to eq('Iroh, Zuko, Kuei, Long Feng, Mai, Ty Lee, Ursa')
    expect(char.affiliation).to eq('Fire Nation')
    expect(char.photoUrl).to eq('https://address.com')

    expect(char2.allies).to eq('none')
    expect(char2.enemies).to eq('none')
  end
end