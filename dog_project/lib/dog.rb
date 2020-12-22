class Dog
  
  attr_reader :name, :breed, :age, :favorite_foods

  def initialize(name, breed, age, bark, favorite_foods)
    @name = name
    @breed = breed
    @age = age
    @bark = bark
    @favorite_foods = favorite_foods
  end

  def age=(num)
    @age = num
  end

  def bark
    if @age > 3
      return @bark.upcase
    else 
      return @bark.downcase
    end
  end

  

end
