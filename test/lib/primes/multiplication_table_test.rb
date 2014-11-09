require "test_helper"

module Primes
  describe MultiplicationTable do
    subject { MultiplicationTable.new(numbers) }
    let(:numbers) { (5..8) }

    describe "#initialize" do
      it "sets the headers across the top" do
        assert_equal [5, 6, 7, 8], subject.across
      end

      it "sets the specified numbers down the left" do
        assert_equal [5, 6, 7, 8], subject.down
      end
    end

    describe "#column" do
      it "returns the column at the index specified" do
        assert_equal [30, 36, 42, 48], subject.column(1)
      end
    end

    describe "#row" do
      it "returns the row at the index specified" do
        assert_equal [40, 48, 56, 64], subject.row(3)
      end
    end
  end
end
