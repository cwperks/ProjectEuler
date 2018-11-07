#!/usr/bin/env ruby

def smallest_multiple(n)
    # Start by finding the largest prime number less than n
    smallest_multiple = 1
    current_prime = 2
    while current_prime < n
        unless is_prime(current_prime)
            current_prime += 1
            next
        end
        power_to_test = 1
        while current_prime**power_to_test < n
            smallest_multiple *= current_prime
            power_to_test += 1
        end
        current_prime += 1
    end
    smallest_multiple
end

def is_prime(n)
    factors = []
    if n <= 0
        puts "n must be larger than 0"
        return -1
    end
    # Start factorizing by finding the lowest common factor
    next_prime_factor = 2

    while n > 1
        # On each loop divide out the next lowest prime number then you can
        # be guaranteed that the next number to go evenly in is the next lowest
        # prime factor
        while n % next_prime_factor == 0
            factors.push(next_prime_factor)
            n /= next_prime_factor
        end
        next_prime_factor += 1
    end
    factors.length == 1
end

puts smallest_multiple(20)
