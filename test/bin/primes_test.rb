require "test_helper"
require "open3"

describe "when executing bin/primes" do
  it "prints a multiplication table of the first ten prime numbers" do
    output, _ = Open3.capture2e("bin/primes")
    assert_equal <<PRIMES, output
   x   2   3   5   7  11  13  17  19  23  29
   2   4   6  10  14  22  26  34  38  46  58
   3   6   9  15  21  33  39  51  57  69  87
   5  10  15  25  35  55  65  85  95 115 145
   7  14  21  35  49  77  91 119 133 161 203
  11  22  33  55  77 121 143 187 209 253 319
  13  26  39  65  91 143 169 221 247 299 377
  17  34  51  85 119 187 221 289 323 391 493
  19  38  57  95 133 209 247 323 361 437 551
  23  46  69 115 161 253 299 391 437 529 667
  29  58  87 145 203 319 377 493 551 667 841
PRIMES
  end

  it "takes a size parameter for the multiplication table" do
    output, _ = Open3.capture2e("bin/primes", "--size=3")
    assert_equal <<PRIMES, output
  x  2  3  5
  2  4  6 10
  3  6  9 15
  5 10 15 25
PRIMES
  end

  it "fails if '--size' doesn't get a numerical value" do
    output, _ = Open3.capture2e("bin/primes", "--size=ten")
    assert_match /ArgumentError/, output
  end

  it "prints the nth prime number when given the param '--number'" do
    output, _ = Open3.capture2e("bin/primes", "--number=17")
    assert_equal <<PRIMES, output
59
PRIMES
  end

  it "fails if '--number' doesn't get a numerical value" do
    output, _ = Open3.capture2e("bin/primes", "--number=seventeen")
    assert_match /ArgumentError/, output
  end
end
