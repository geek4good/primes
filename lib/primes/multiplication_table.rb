require "matrix"

module Primes
  class MultiplicationTable
    attr_reader :across, :down

    def initialize(number_range)
      @across = @down = number_range.to_a
      @matrix = Matrix.build(number_range.count) { |row, col|
        across[col] * down[row]
      }
    end

    def column(index)
      matrix.column(index).to_a
    end

    def row(index)
      matrix.row(index).to_a
    end

    private

    attr_reader :matrix
  end
end
