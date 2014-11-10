require "primes/version"
require "primes/sieve"
require "primes/multiplication_table"

module Primes
  def self.multiplication_table(options)
    sieve = Sieve.new

    return sieve.nth(Integer(options[:number])) if options[:number]

    size = Integer(options[:size])
    MultiplicationTable.new(sieve.first(size))
  end
end
