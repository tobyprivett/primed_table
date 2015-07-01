require 'spec_helper'

RSpec.describe Fixnum do

  context '#prime?' do
    it 'is false for 1' do
      expect(1).to be_prime
    end

    it 'is true for 2' do
      expect(2).to be_prime
    end

    it 'is true for 3' do
      expect(3).to be_prime
    end

    it 'is false for 4' do
      expect(4).not_to be_prime
    end

    it 'is true for 7919' do
      expect(7919).to be_prime
    end

    it 'is false for 7920' do
      expect(7920).not_to be_prime
    end
  end
end
