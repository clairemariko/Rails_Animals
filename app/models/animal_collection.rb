class AnimalCollection 

  @animals = []
  def add_animals(animals)
    animals.each  do |animal|
      @animals.push(animal)
    end

  end

  def find_animal(animal_name)

    @animals.each do |animal|
      if animal[:name] = name
      return animal

    end

  end






end