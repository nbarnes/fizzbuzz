require 'minitest/spec'
require 'minitest/autorun'
require_relative '../Fizzbuzzer.rb'

describe "Fizzbuzzer" do

  it "will fizzbuzz correctly" do
    my_fizzbuzzer = Fizzbuzzer.new
    my_fizzbuzzer.fizzbuzz(13).must_equal ""
    my_fizzbuzzer.fizzbuzz(15).must_equal "fizzbuzz"
    my_fizzbuzzer.fizzbuzz(9).must_equal "fizz"
    my_fizzbuzzer.fizzbuzz(20).must_equal "buzz"
  end

  it "will fizzbuzz with an extension correctly" do
    my_fizzbuzzer = Fizzbuzzer.new
    my_fizzbuzzer.add_buzzer("sivv", 7)
    my_fizzbuzzer.fizzbuzz(13).must_equal ""
    my_fizzbuzzer.fizzbuzz(15).must_equal "fizzbuzz"
    my_fizzbuzzer.fizzbuzz(9).must_equal "fizz"
    my_fizzbuzzer.fizzbuzz(20).must_equal "buzz"
    my_fizzbuzzer.fizzbuzz(21).must_equal "fizzsivv"
    my_fizzbuzzer.fizzbuzz(14).must_equal "sivv"
    my_fizzbuzzer.fizzbuzz(105).must_equal "fizzbuzzsivv"
  end

end