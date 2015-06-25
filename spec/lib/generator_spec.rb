require 'spec_helper'

RSpec.describe PrimedTable::Generator do

  context '#draw' do
    let(:primed_table) { described_class.new(4) }

    it 'draws a table for 4 numbers' do
      expect(primed_table.draw).to match(/Draw a table for 4 prime numbers/)
    end
  end
end
