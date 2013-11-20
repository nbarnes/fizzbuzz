class Fizzbuzzer

  def initialize
    @buzzers = Hash.new
    add_buzzer("fizz", 3)
    add_buzzer("buzz", 5)
  end

  # CONSIDER: currently the order that phonemes are checked and outputted
  # is arbitrarily set based on the order they were added in.  This could
  # be changed.

  def add_buzzer(string, num)
    @buzzers[string] = num
  end

  def fizzbuzz(argnum)
    output = ""
    buzzkill = true
    @buzzers.each do |string, num|
      if argnum % num == 0
        output += string
        buzzkill = false
      end
    end
    return argnum.to_s if buzzkill
    output
  end

end
