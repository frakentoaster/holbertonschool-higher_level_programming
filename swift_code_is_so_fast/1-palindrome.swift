// Function returns true if given arg is a palindrome
func is_palindrome(s: String) -> (Bool) {
		return String(s.characters) == String(s.characters.reverse())
}
