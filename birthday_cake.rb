=begin
birthday_cake.rb

It's your birthday! Yay! 🎂

Can you debug this BirthdayCake class in time to sing happy birthday? 🎶

Tip: Resolve the error messages before trying to make it work

Expected output:
Happy 10th Birthday!
Birthday cake with 10 blown out candles
Lighting candles...
Birthday cake with 10 lit candles
Singing happy birthday...
🎶Happy birthday to you, happy birthday to you🎶
Blowing out candles...
Birthday cake with 10 blown out candles

=end

require "active_support/all"

class BirthdayCake
  attr_accessor :age, :lit

  #add lit
  def initialize(age, lit)
    self.age = age
    self.lit = false
  end

  def candles_status
    if self.lit == true
      return "lit"
    else
      return "blown out"
    end
  end
#try (self.age).ordinalize
  def greet
    "Happy #{self.age.ordinalize} Birthday!"
  end

  def sing
    "🎶Happy birthday to you, happy birthday to you🎶"
  end

    #candle status maybe not in {}
  def to_s
    "Birthday cake with #{self.age} #{candles_status} candles"
  end

  def light_candles
    self.lit = true
  end

  def blow_out_candles
    self.lit = false
  end
  

  #should only be celebrate. birthday_cake should be outside of method.
  def celebrate(age)
    #birthday_cake(age) = Birthdaycake.new
    puts greet
    puts to_s
    puts "Lighting candles..."
    light_candles
    puts to_s
    puts "Singing happy birthday..."
    # #what is this? sing probably?
    puts sing
    puts "Blowing out candles..."
    # #bithday_cake. there is not blow out candles
    # birth_cake.blow_out_candles
    puts to_s
    # #what is this?
    #birthday_cake
  end
end

birthday_cake = BirthdayCake.new(10, false)
birthday_cake.celebrate(10)
