import "dart:io";
import "dart:math";

main(List<String> args) {
	int now = DateTime.now().microsecondsSinceEpoch;
	var randomNumberGenerator = Random(now);
	while (true) {
		stdout.write("／＼"[randomNumberGenerator.nextInt(2)]);
	}
}
