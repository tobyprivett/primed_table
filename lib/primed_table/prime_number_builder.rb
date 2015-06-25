module PrimedTable
  class PrimeNumberBuilder
    attr_accessor :count

    def initialize(count)
      @count = count
    end

    def list
      prime_numbers = []
      current_number = 2

      while prime_numbers.length < @count
        prime_numbers << current_number if is_prime?(current_number)
        current_number += 1
      end

      prime_numbers
    end

    private

    def is_prime?(number)
      (2..number/2).none?{ |i| number % i == 0 }
    end
  end
end


