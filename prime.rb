# Add  code here!
require 'benchmark'

Benchmark.bmbm(7) do |bm|
  bm.report('jessie') do
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

bm.report('solution') do
    def prime?(num)
  if num < 0 or num == 0 or num == 1
    return false
  else
    (2..num-1).to_a.all? do |possible_factor|
      num % possible_factor != 0
    end
  end
end

end


end
