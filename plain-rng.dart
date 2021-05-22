import "dart:io";
import "dart:math";

void main(List<String> args) async {
	int now = DateTime.now().microsecondsSinceEpoch;
	var randomNumberGenerator = Random(now);
	if (args.length < 2) {
		print("Usage: plain-rng {min} {max} [min inclusive] [max inclusive]");
		print("Min inclusive defaults to true");
		print("Max inclusive defaults to false");
		exit(0);
	}
	int min = int.parse(args[0]);
	int max = int.parse(args[1]);
	bool min_inclusive = true;
	bool max_inclusive = false;
	if (args.length>2) {
		min_inclusive = args[2]=="true";
	}
	if (args.length>3) {
		max_inclusive = args[3]=="true";
	}
	if (!min_inclusive) {
		min+=1;
	}
	if (!max_inclusive) {
		max-=1;
	}
	int out = randomNumberGenerator.nextInt((max-min)+1)+min;
	print(out);
}