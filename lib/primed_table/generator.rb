module PrimedTable
  class Generator
    attr_accessor :count

    def initialize(count)
      @count = count
    end

    def draw
      "Draw a table for #{ @count } prime numbers"
    end
  end
end
