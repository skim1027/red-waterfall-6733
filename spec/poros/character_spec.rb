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

    char = Character.new(attr)
    expect(char).to be_a Character
    expect(char.name).to eq('Azula')
    expect(char.allies).to eq('Ozai, Zuko')
    expect(char.enemies).to eq('Iroh, Zuko, Kuei, Long Feng, Mai, Ty Lee, Ursa')
    expect(char.affiliation).to eq('Fire Nation')
    expect(char.photoUrl).to eq('https://address.com')
  end
end