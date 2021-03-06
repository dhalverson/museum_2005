class Museum

  attr_reader :name,
              :exhibits,
              :patrons
  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    @exhibits.select do |exhibit|
      patron.interests.include? exhibit.name
    end
  end

  def admit(patron)
    @patrons << patron
  end

  def patrons_by_exhibit_interest
    patrons_hash = {}
    @exhibits.each do |exhibit|
      exhibit.name
      @patrons.each { |patron| patron.interests }
    end
    require "pry"; binding.pry
  end
end
