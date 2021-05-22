import "dart:io";
import "dart:math";

void main(List<String> args) async {
	int now = DateTime.now().microsecondsSinceEpoch;
	var randomNumberGenerator = Random(now);
	String tone_str = "";
	if (args.length < 1) {
		int tone_int = randomNumberGenerator.nextInt(3);
		const Map tone_convert = {0:"negative",1:"neutral",2:"positive"};
		tone_str = tone_convert[tone_int];
	} else {
		tone_str = args[0];
	}
	File file = File("magic-8-ball/${tone_str}.txt");
	String contents = await file.readAsString();
	List<String> responses = contents.split("\r\n");

	int response_index = randomNumberGenerator.nextInt(responses.length);
	print(responses[response_index]);
}