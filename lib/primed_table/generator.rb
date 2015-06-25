module PrimedTable
  class Generator
    attr_accessor :count, :prime_numbers

    def initialize(count)
      @count = count
      @prime_numbers = PrimeNumberBuilder.new(count).list
    end

    def draw
      rows = []
      rows << header_row
      rows << seperator_row
      @prime_numbers.each do |prime_number|
        rows << computed_row(prime_number)
      end
      rows
    end

    private

    def header_row
      row_builder(nil, @prime_numbers)
    end

    def seperator_row
      row_builder('-', @prime_numbers.map{ |i| '---' })
    end

    def computed_row(prime_number)
      row_builder(
        prime_number,
        @prime_numbers.map{ |n| n * prime_number }
      )
    end

    def row_builder(y_value, numbers)
      [ pad(y_value), ' |', numbers.map{ |i| pad(i) } ].join
    end

    def pad(char, length=4)
      '%4.4s' % char.to_s
    end
  end
end
