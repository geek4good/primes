require "test_helper"

module Primes
  describe SieveOfEratosthenes do
    subject { SieveOfEratosthenes.new }

    describe "#primes" do
      it "returns an ordered sequence of the prime numbers" do
        assert_equal(subject.primes.first(12), [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37])
      end
    end
  end
end
