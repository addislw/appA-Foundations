# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.


def largest_prime_factor(num)
  num.downto(1) do |n|
    if num % n == 0 && prime?(n)
      return n
    end
  end
end

def prime?(num)
  return false if num < 2
  (2...num).each { |n| return false if num % n == 0 }
  true
  
end