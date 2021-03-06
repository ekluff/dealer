class Car
  @@cars = []
  @@counter = 0

#instance methods
  define_method(:initialize) do | make, model, year |
    @make = make
    @model = model
    @year = year
    @id = Car.create_id()
    self.save()
  end

  define_method(:make) do
    @make
  end

  define_method(:model) do
    @model
  end

  define_method(:year) do
    @year
  end

  define_method(:id) do
    @id
  end

  define_method(:save) do
    @@cars.push(self)
  end

#class methods
  define_singleton_method(:create_id) do
    @@counter += 1
  end

  define_singleton_method(:clear) do
    @@counter = 0
    @@cars = []
  end

  define_singleton_method(:all) do
    @@cars
  end

  define_singleton_method(:find_car) do |id|
    @@cars.each() do |car|
      if car.id() == id
        return car
      else
        "Not found"
      end
    end
  end

end
