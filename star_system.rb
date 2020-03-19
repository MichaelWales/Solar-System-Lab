class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def planet_names()
    return @planets.map {|planet| planet.name}
  end

  def get_planet_by_name(name)
    return @planets.find {|planet| planet.name == name}
  end

  def get_largest_planet
    @planets.max_by do |planets|
      planets.diameter
    end
  end

  def get_smallest_planet
    @planets.min_by do |planets|
      planets.diameter
    end
  end

  def get_planets_with_no_moons
    @planets.find_all {|planets| planets.number_of_moons == 0}
  end

  # def get_planets_with_more_moons(number_of_moons)
  #   @planets.find_all do |planets|
  #     planets_name = []
  #     planets.number_of_moons > 4 << planets_name
  #     return planets_name
  #   end
  # end

  def get_number_of_planets_closer_than(number)
    number_of_planets = []
    number_of_planets = @planets.find_all {|planets| planets.distance_from_sun < number}
    return number_of_planets.length
  end

end