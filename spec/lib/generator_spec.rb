require 'spec_helper'

RSpec.describe PrimedTable::Generator do

  let(:sample_table) {
    <<-SAMPLE_TABLE
        |   2   3   5
     ----------------
      2 |   4   6  10
      3 |   6  10  15
      5 |  10  15  25
    SAMPLE_TABLE
  }

  context '#draw' do
    let(:primed_table) { described_class.new(count) }

    context 'with 3 prime numbers' do
      let(:count) { 3 }

      it 'draws the table' do
        expect(primed_table.draw).to match(sample_table)
      end
    end
  end
end
