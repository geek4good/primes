module Primes
  class SieveOfEratosthenes
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
