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
        prime_numbers << current_number if current_number.prime?
        current_number += 1
      end

      prime_numbers
    end
  end
end


