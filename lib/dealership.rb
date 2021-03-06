class Dealership
  @@dealerships = []

  # instance methods
  define_method(:initialize) do | name, city, state |
    @name = name
    @city = city
    @state = state
    @cars = []
  end

  define_method(:save) do
    @@dealerships.push(self)
  end

  define_method(:name) do
    @name
  end

  define_method(:city) do
    @city
  end

  define_method(:state) do
    @state
  end

  define_method(:cars) do
    @cars
  end

  define_method(:add_car) do |car|
    @cars.push(car)
  end

  # class methods
  define_singleton_method(:clear) do
    @@dealerships = []
  end

  define_singleton_method(:all) do
    @@dealerships
  end

  define_singleton_method(:find) do |name|
    @@dealerships.each() do |dealership|
      if dealership.name == name
        return dealership
      end
    end
  end

end
