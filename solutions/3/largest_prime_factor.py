#!/usr/local/bin/python

def prime_factors(n):
	factors = []
	if n <= 0:
		print "n must be larger than 0"
		return -1
	# Start factorizing by finding the lowest common factor
	next_prime_factor = 2
	while n > 1:
		# On each loop divide out the next lowest prime number then you can
		# be guaranteed that the next number to go evenly in is the next lowest
		# prime factor
		while n % next_prime_factor == 0:
			factors.append(next_prime_factor)
			n /= next_prime_factor
		next_prime_factor += 1
	return factors

def largest_prime_factor(n):
	factors = prime_factors(n)
	return max(factors)

print largest_prime_factor(600851475143)