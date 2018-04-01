# Add  code here!
def prime?(number)
    if number <= 0
        return false
    elsif number == 1 || number == 2
        return true
    else
        range = (2..number-1).to_a
        if range.any? { |n| number % n == 0 }
            return false
        else
            return true
        end
    end
end
