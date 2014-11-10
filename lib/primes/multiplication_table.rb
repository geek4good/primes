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

    def to_s
      output = ""
      matrix.row_vectors.each_with_index do |row, index|
        output << format_row(row.to_a, index)
      end
      output
    end

    private

    attr_reader :matrix

    def format_row(row_data, row_index)
      input = [down[row_index], row_data, "\n"]
      input.unshift(["x", across, "\n"]) if row_index.zero?

      input.flatten.each_with_object("") { |val, out|
        out << val.to_s.rjust(padding)
      }.gsub(/\s+\n/, "\n")
    end

    def padding
      @padding ||= begin
        max = matrix.to_a.flatten.max
        Math.log(max, 10).ceil + 1
      end
    end
  end
end
