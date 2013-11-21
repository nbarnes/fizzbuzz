class Fizzbuzzer

  def initialize
    @buzzers = Hash.new
    add_buzzer("fizz", 3)
    add_buzzer("buzz", 5)
  end

  # CONSIDER: currently the order that phonemes are checked and outputted
  # is arbitrarily set based on the order they were added.  This could be
  # changed.

  def add_buzzer(string, num)
    @buzzers[string] = num
  end

  def fizzbuzz(argnum)
    output = ""
    @buzzers.each do |string, num|
      output += string if argnum % num == 0
    end
    output.empty? ? argnum.to_s : output
  end



end
