import"dart:io";void main()async{File file=File("words.txt");String contents=await file.readAsString();List<String>words=contents.split("\r\n");for(String word in words){String reversedWord=word.split('').reversed.join();if(word==reversedWord){print("Anagram found: $word");}}}