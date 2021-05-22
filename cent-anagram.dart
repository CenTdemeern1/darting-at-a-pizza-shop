import "dart:io";

void main() async {
	File file = File("words.txt");
	String contents = await file.readAsString();
	List<String> words = contents.split("\r\n");
	for (String word in words) {
		String reversedWord = word.split('').reversed.join(); //Splits string into array of letters, then reverses the array, then joins it together.
		if (words.contains(reversedWord)) {
			print("Anagram found: $word & $reversedWord");
		}
	}
}