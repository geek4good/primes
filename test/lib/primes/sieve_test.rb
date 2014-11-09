require "test_helper"

module Primes
  describe Sieve do
    subject { Sieve.new }

    describe "#first" do
      it "returns the first n prime numbers" do
        assert_equal([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37], subject.first(12))
      end
    end

    describe "#nth" do
      it "returns the nth prime number" do
        assert_equal(17, subject.nth(7))
      end
    end
  end
end
