require 'spec_helper'

RSpec.describe PrimedTable::Generator do

  context '#draw' do
    let(:primed_table) { described_class.new(3) }

    let(:sample_table) {
      [
        "     |   2   3   5",
        "   - | --- --- ---",
        "   2 |   4   6  10",
        "   3 |   6   9  15",
        "   5 |  10  15  25"
      ]
    }

    it 'draws the table' do
      expect(primed_table.draw).to match(sample_table)
    end
  end
end
