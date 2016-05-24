// Recursive factorial function
func factorial(N: Int) -> (Int) {
	if N == 1 {
		return 1
	} else {
		return N * factorial(N - 1)
	}
}
