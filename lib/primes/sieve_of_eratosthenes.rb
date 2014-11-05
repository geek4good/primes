module Primes
  class SieveOfEratosthenes
    def first(n)
      index = Integer(n)
      return [] if index < 1

      primes.first(n)
    end

    def nth(n)
      first(n).last
    end

    private

    def primes
      prime_numbers = []
      (2..Float::INFINITY).lazy.select { |number|
        if prime_numbers.none? { |factor| number % factor == 0 }
          prime_numbers << number
        end
      }
    end
  end
end
