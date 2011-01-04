class Hobbit
  def initialize(name, rooms, has_ring)
    @name, @rooms, @has_ring = name, rooms, has_ring
  end
  def name
    @name
  end
  def name_of(hobbit)
    hobbit.name
  end
  def rooms_of(hobbit)
    hobbit.rooms
  end
  def hobbit_has_ring?(hobbit)
    hobbit.has_ring?
  end
  protected
  def rooms
    @rooms
  end
  private
  def has_ring?
    @has_ring
  end
end

frodo = Hobbit.new('Frodo', 3, true)
samwise = Hobbit.new('Samwise', 2, false)

## Métodos públicos

frodo.name
samwise.name

## Métodos protected

frodo.rooms # err

frodo.rooms_of(frodo)
frodo.rooms_of(samwise)

## Métodos private

frodo.has_ring? # err
frodo.hobbit_has_ring?(frodo) # err
frodo.hobbit_has_ring?(samwise) # err

class Hobbit
  def i_have_the_ring?
    has_ring?
  end
end

frodo.i_have_the_ring?
