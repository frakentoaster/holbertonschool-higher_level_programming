// Function returns true if given number is prime
func is_prime(number: Int) -> (Bool) {
	if number <= 1 {
		return false
	} else {
		for i in 2...number / 2 {
			if number % i == 0 {
				return false
			}
		}
	}
	return true
}
