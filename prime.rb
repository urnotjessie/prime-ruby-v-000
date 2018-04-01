# Add  code here!
require 'benchmark'

Benchmark.bmbm(7) do |bm|
  bm.report('reverse') do
    def prime?(number)
        if number <= 1
            return false
        else
            range = (2..number-1).to_a
            if range.any? { |n| number % n == 0 }
                return false
            else
                return true
            end
        end
    end
end
end
