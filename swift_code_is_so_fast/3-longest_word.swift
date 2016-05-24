// Function returns the longest word in a given string
func longest_word(text: String) -> (String) {
	var word = ""
	let myTextArr = text.characters.split{$0 == " "}.map(String.init)
	for i in myTextArr {
		if i.characters.count > word.characters.count {
			word = i
		}
	}
	return word
}
