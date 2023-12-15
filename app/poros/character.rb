class Character
  attr_reader :name,
              :allies,
              :enemies,
              :affiliation,
              :photoUrl

  def initialize(data)
    @name = data[:name]
    @allies = data[:enemies].empty? ? 'none' : data[:allies].join(', ')
    @enemies = data[:enemies].empty? ? 'none' : data[:enemies].join(', ')
    @affiliation = data[:affiliation]
    @photoUrl = data[:photoUrl]
  end
end