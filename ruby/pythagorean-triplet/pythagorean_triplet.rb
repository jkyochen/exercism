=begin
Write your code for the 'Pythagorean Triplet' exercise in this file. Make the tests in
`pythagorean_triplet_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/pythagorean-triplet` directory.
=end

class PythagoreanTriplet
  def self.triplets_with_sum(num)
    (1..num).each_with_object([]) do |a, acc|
      (a + 1..num).each do |b|
        c = num - a - b
        break if b >= c

        acc << [a, b, c] if a**2 + b**2 == c**2
      end
    end
  end
end
