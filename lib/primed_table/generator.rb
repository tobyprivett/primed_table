module PrimedTable
  class Generator
    attr_accessor :count

    def initialize(count)
      @count = count
    end

    def draw
       <<-SAMPLE_TABLE
        |   2   3   5
       ----------------
        2 |   4   6  10
        3 |   6  10  15
        5 |  10  15  25
      SAMPLE_TABLE
    end
  end
end
