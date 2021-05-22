import "dart:io";
import "dart:math";

void main(List<String> args) {
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
	const Map fConv = {"positive":"""It is certain
Without a doubt
You may rely on it
Yes definitely
It is decidedly so
As I see it, yes
Most likely
Yes
Outlook good
Signs point to yes""",
"neutral":"""Reply hazy try again
Better not tell you now
Ask again later
Cannot predict now
Concentrate and ask again""",
"negative":"""Don’t count on it
Outlook not so good
My sources say no
Very doubtful
My reply is no"""};
	String contents = fConv[tone_str];
	List<String> responses = contents.split("\n");

	int response_index = randomNumberGenerator.nextInt(responses.length);
	print(responses[response_index]);
}