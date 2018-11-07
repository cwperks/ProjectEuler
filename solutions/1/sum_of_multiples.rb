#!/usr/bin/env ruby
def sum_of_multiples(multiples = [], target = 0)
  total_sum = 0
  return total_sum if multiples.length == 0 
  for i in 1..(target-1)
    multiples.each do | multiple |
      if i % multiple == 0
        total_sum += i
        break
      end
    end
  end
  total_sum
end

puts sum_of_multiples([3, 5], 1000)