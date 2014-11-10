require "primes/version"
require "primes/sieve"
require "primes/multiplication_table"

module Primes
  def self.multiplication_table(options)
    size = options[:size].to_i
    MultiplicationTable.new(Sieve.new.first(size))
  end
end
