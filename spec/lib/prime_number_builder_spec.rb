require 'spec_helper'

RSpec.describe PrimedTable::PrimeNumberBuilder do

  context '#list' do
    subject { described_class.new(6).list }

    it 'builds an ordered list of 6 prime numbers' do
      expect(subject).to eql([2, 3, 5, 7, 11, 13])
    end
  end
end
