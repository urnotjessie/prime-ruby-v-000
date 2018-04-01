# Add  code here!
def prime?(number)
    range = (2..number-1).to_a
    if range.any? { |n| number % n == 0 }
        return false
    else
        return true
