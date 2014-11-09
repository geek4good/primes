module Primes
  class Sieve
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
      (2..Float::INFINITY).lazy.select { |number|
        divisible = prime_numbers.any? do |prime, _|
          break if prime > Math.sqrt(number)

          while number > prime_numbers[prime]
            prime_numbers[prime] += prime
          end

          prime_numbers[prime] == number
        end

        prime_numbers[number] = number unless divisible
      }
    end

    def prime_numbers
      @prime_numbers ||= Hash.new { |hash, key| hash[key] = 0 }
    end
  end
end
